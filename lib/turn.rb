def turn(board)
  puts "Please enter 1-9:"
  user_input = gets
  user_input = input_to_index(user_input)
  
  if valid_move?(board, user_input)
    move(board, user_input, "X")
    display_board(board)
  else turn(board)
 end 
end 


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def valid_move?(board, x)
  if board[x] == "X"
    return false
  elsif board[x] == "O"
    return false
  elsif x >= 0 && x <= 8
    return true
  end 
end


def input_to_index(user_input)
  user_input.to_i
  user_input = user_input.to_i - 1
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def move(board, index, token = "X")
  board[index] = token
end