def turn(board)
  
  puts "Please enter 1-9:"
  user_input = gets.strip
  
  position = input_to_index(user_input)
  
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
    
end

# Writes the specified game board to standard out
#
# @param <board> - an array representing the game board
#
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Converts the specified user input value to a valid game board index.
#
# @param <user_input> - an integer within the range 1-9 inclusive
#
def input_to_index(user_input)
  return user_input.to_i() - 1
end


# Enters the specified <player> into the specified position on the board.
#
# @param <board> - game array
# @param <move_position> - index of next move, should be in range 0-8
# @param <player> - string with value "X" or "O"
def move(board, move_position, player="X")
  board[move_position] = player
  
  return board
end

# Converts the specified user input value to a valid game board index.
#
# @param <board> - an array representing the game board
# @param <index> - an integer representing the player's move
#
def valid_move?(board, index)
  return index.between?(0, board.length) && !position_taken?(board, index)
end

# Determines whether the specified spot on the game board is occupied.
#
# @param <board> - an array representing the game board
# @param <index> - an integer representing the player's move
#
def position_taken?(board, index)
  position = board[index]
  
  if !(position.nil? || position.eql?(" ") || position.empty?)
    return (position.eql?("X") || position.eql?("O"))
  else
    return false
  end
  
end