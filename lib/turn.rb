def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  input.to_i - 1
end


def move(board, index, value = "X")
  board[index] = value
end


# code your #position_taken? method here!
def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end


# code your #valid_move? method here
def valid_move?(board, index)
  (index > -1 && index < 9) && !(board[index] == "X" || board[index] == "O")
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.


def turn(board)
  puts "Please enter 1-9:"
end

