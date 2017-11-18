# ask for input
# get input
# convert input to index
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again until you get a valid input
# end

#display_board creates a blank tic tac toe board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  puts "-----------"
end

#input_to_index converts a user_input to an integer
def input_to_index(input)
  index = input.to_i - 1
end

#move allows "X" player in the bottom right and "O" in the top left
def move(board, position, player = "X")
  board[position] = "#{player}"
end

#valid_move? returns true/false based on index
def valid_move?(board, index)
  if index.between?(0,8)
    position_taken?(board,index)
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    false
  else
    true
  end
end

#turn puts everything all together
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
