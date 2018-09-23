def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false 
    return true 
  else 
    return false 
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
    return false 
  else
    return true 
  end 
end

def move(board, index, token = "X")
  board[index] = token 
end

def input_to_index(user)
  user.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  dex = input_to_index(input)
    if valid_move?(board, dex) == true
      move(board, dex)
      display_board(board)
   else 
     turn(board)
   end
end

##puts "Where would you like to go?"
##input = gets.strip
##index = input_to_index(input)
##move(board, index, "X")
