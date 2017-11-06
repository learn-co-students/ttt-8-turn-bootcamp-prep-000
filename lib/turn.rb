
#display_board
# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move?
# Should accept a board and an index from the user and return true
# if the index is within the correct range of 0-8
# and is currently unoccupied by an X or O token.
def valid_move?(board, index)
  user_play = index

  if user_play.between?(0, 8) && !position_taken?(board, index)
      true
  else
    false
  end
end

#position_taken?
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  user_play = index

  if  board[user_play] == nil || board[user_play] == "" || board[user_play] == " "
    false
  elsif board[user_play].upcase == "O" || board[user_play].upcase == "X"
    true
  end
end

#move
# Your #move method must take in three arguments, the board array,
# the index in the board array that the player would like to fill out
# with an "X" or an "O", and the player's character (either "X" or "O").
# The third argument, the player's character, should have a default of "X".
def move(board, position, player_char = "X")
  board[position] = player_char
end

#input_to_index
# Converts Users input to integer and Converts to an index.
def input_to_index(user_input)
  user_input.to_i - 1
end


#turn
def turn(board)
  # User message prompt
  puts "Please enter 1-9:"

  # converts User input to proper formatting
  user_play = input_to_index(gets.strip)

# checks user input
  if valid_move?(board, user_play)
    move(board, user_play)
  else
    turn(board)
  end

  display_board(board)
end
