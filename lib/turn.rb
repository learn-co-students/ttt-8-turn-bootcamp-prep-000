# Learn.co Bootcamp Prep - Ruby Fundamentals - 18: Tic Tac Toe Turn

#   Ask for input
#   Get input
#   Convert input to index
#   Check if index is valid
#    => Check if position is taken.
#    => Check if index exists in 'board'
#       =>  If valid:
#           =>  Make move.
#           =>  Print board.
#       => If invalid:
#           =>  Ask for valid input until received (loop)
#   End.

############################### HELPER METHODS ################################

# Define a method, 'input_to_index', that accepts one parameter(s):
# 'user_input', a string that represents the cell on the game board that the
# user wants to place their token.
# Convert 'user_input' to an integer and calculate the corresponding index.
def input_to_index(user_input)
  index = (user_input.to_i) - 1
end


# Define a method, 'position_taken?', that accepts two parameter(s):
# 'board', an array that represents the spaces on the Tic Tac Toe board, and
# 'index', the index the user wishes to fill with their token ("X" or "O").
# If the position on the board (board[index]) is taken, return true.
# Else, return false (position not taken).
def position_taken?(board, index)
  if !(board[index] == "" || board[index] == " " || board[index] == nil)
    return true
  end
end


# Define a method, 'valid_move?', that accepts two parameter(s):
# 'board', an array that contains the current state of the game board,
# 'index', the index within the board array at which the user is attempting to
# place their token.
# If 'index' is within the bounds of the 'board' array and the position on the
# board (board[index]) is not taken, return true (the move is valid).
# Else, return false (the move is invalid).
def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  end
end


# Define a method, 'move', that accepts three parameter(s):
# 'board', the board array,
# 'index', the index in the board that the user wants to fill with their token,
# 'char', the user's token (set default to 'X').
# Update the 'board' array with the user's selection and return it.
def move(board, index, char = "X")
  board[index] = char
end


# Define a method, 'display_board', that accepts one parameter(s):
# 'board', an array that represents the current state of the game.
# Print the game board template and the values from the 'board' array in order
# to display the current state of the game.
def display_board(board)
  horiz_line = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts horiz_line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts horiz_line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


###############################################################################

# Define a method, 'turn', that accepts one parameter(s):
# 'board', an array that represents the current state of the game.
# Request input from user.
# Get and validate input.
# If valid,
# => Make the move (updates 'board' array),
# => Display the board (prints the new state of game including the valid move).
# If invalid,
# => Take turn (recursively call turn(board)).
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
