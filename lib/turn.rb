#displays the blank board
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid move method accepts two arguments, board and index
def valid_move?(board, index)
  #if the index is between 0-8 for the cells of the board
  if index.between?(0, 8)
    #and the position is taken, not a valid move
      if position_taken?(board, index)
        return false
      #if the position isn't taken, it is a valid move
      else
        return true
      end
  #if the move is not between 0-8, not a valid move
  else
    return false
  end
end

def position_taken?(board, index)
  #if the spot is empty i.e is a space or is nil, it is not taken
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  #if there is anything other than a space or nil, it is taken
  else
    return true
  end
end

def move(board, index, character="X")
  #index converts raw index from integer to string
  index = index.to_i
  board[index.to_i] = character.to_s
end

#takes the user input and converts to an index from raw input of user
def input_to_index(user_input)
  #converts user input to an integer
  user_input = user_input.to_i
  #makes integer start at 0 instead of 0 from 0-8 instead of 1-9 value
  user_input = user_input-1
end

def turn(board)
  #valid move is valse until it is an integer 1-9
  isValid = false
  until isValid
    puts "Please enter 1-9:"
    user_input = gets.strip()
    index = input_to_index(user_input)
    isValid = valid_move?(board, index)
  end

  move(board, index)

  display_board(board)
end
