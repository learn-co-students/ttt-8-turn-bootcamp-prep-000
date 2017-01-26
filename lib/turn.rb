def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board, index)
  if (index.between?(0, 8)) && (position_taken?(board, index) == false)
    true
  elsif (position_taken?(board, index) == true)
    false
  else index < 8
   false
end
end

def position_taken?(board, index)
  if board[index] == !("" || " ")
    false
  elsif (board[index] == "X") || (board[index] == "O")
    true
  else
    false
end
end

def input_to_index(user_input)
    user_input.to_i - 1
end

def move(board, index, character="X")
board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, character="X")
    display_board(board)
else
    turn(board)
end
end
