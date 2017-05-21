def valid_move? (board, index)
  if index < 0 || index > 8 || board[index] ==  "X" || board[index] == "O"
  false
else index.between?(0,8) && board[index] ==  "X" || board[index] == "O"
  true
end
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  user_input.to_i - 1
end

# code your input_to_index and move method here!


def move (array, index, char = "X")
  array[index] = char
end

def turn (board)
  puts "Please enter 1-9:"
input = gets.strip
index = input_to_index(input)
if valid_move?(board, index) == true
  move(board, index, "X")
  display_board(board)
else
  turn(board)
end
end
