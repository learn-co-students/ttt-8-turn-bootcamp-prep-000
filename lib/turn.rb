def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(user)
  user.to_i - 1

end


def move(board, user, character= "X")
  board[user] = character

end

def position_taken?(board, user)
  if board[user] == " " || board[user] == ""
    return false
  elsif board[user] == nil 
    return false
  else board[user] == "X" || board[user] == "O"
    return true
    
  end
end


def valid_move?(board, user)
  if position_taken?(board, user)  == false && user.between?(0, 8) == true
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  
  user = gets.strip
  
  num = input_to_index(user)
  
  if valid_move?(board, num) == true
    move(board, num, character= "X")
    display_board(board)
  else valid_move?(board, num) == false 
    puts "Please enter 1-9:"
    user = gets.strip
  end
  
end