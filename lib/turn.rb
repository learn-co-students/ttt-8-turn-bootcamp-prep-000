# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  !(board[index] == " " || board[index] == "" || board[index] == nil)
end

# code your #valid_move? method here
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

# code your input_to_index and move method here!
def input_to_index(num_str)
  return num_str.to_i - 1
end

def move(board, index, char="X")
  board[index] = char
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip.to_i
  index = input_to_index user_input
  if valid_move? board, index
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
