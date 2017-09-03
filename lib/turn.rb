#display_board accepts a board and prints out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index accepts the player's input and converts into board index
def input_to_index(player_input)
  player_input.to_i - 1
end

def move(board, index, player_character = "X")
  board[index] = player_character
  return board
end

#valid_move accepts the board and index and determines if the player made a valid move
def valid_move?(board, index)
  if index >= 0 && index <= 8 && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

#position_taken tests if the position has been taken in a previous turn
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

#turn accepts the board and the player's character and completes 1 turn
def turn(board, player_character = "X")
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, player_character)
    display_board(board)
  else
    puts "You have entered an invalid choice."
    turn(board, player_character)
  end
end
