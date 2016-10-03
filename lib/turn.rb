#Displays an empty board/prints arbitrary arrangements of the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  # converts the user input to an integer
  user_input = user_input.to_i
  # subtracts 1 from the user input,& makes an int start at 0 (0 -8) instead of 1 to 9 value.
  user_input = user_input-1
end
#The valid_move method accepts 2 arguments and returns true/false based on index.
def valid_move?(board, index)
  # if the index is within the correct range of 0-8
  if index.between?(0,8)
    #  if the position is not taken, then it's a valid move.
    if !position_taken?(board, index)
      true
    else
      # if the position is taken, It's note valid move
      return false
    end
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

# allows "X" player in the bottom right and "O" in the top left
def move(board, index, player_char = "X")
  if valid_move?(board, index)
    board[index] = player_char
  else
    return nil
  end
end

def turn(board)
  puts "Please enter 1-9:"
  # gets the user input
  input = gets.strip
  # calls the input_to_index method
  index = input_to_index(input)
  #  makes valid moves
  if move(board, index)
    # displays a correct board after a valid turn
    display_board(board)
  else
    turn(board)
  end
end
