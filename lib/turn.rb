def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, character = "X")
  board[index] = character
end

def input_to_index(input)
  input = input.to_i
  input -= 1
end

def valid_move?(board, index)
  if
    !index.between?(0, 8)
    return false
  elsif
    position_taken?(board, index) == true
    return false
  elsif
    position_taken?(board, index) == false
    return true 
  end
end
  
def position_taken?(board, index)
  if
    board[index] == "X" || board[index] == "O"
    return true 
  elsif
    board[index] == "" || board[index] == " " || board[index] == nil 
    return false
  end
end

def turn(board) 
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, character = "X")
    display_board(board)
  else
    turn(board)
  end
end 