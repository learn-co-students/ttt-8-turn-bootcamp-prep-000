#DISPLAY_BOARD  METHOD

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#INPUT_TO_INDEX  METHOD

def input_to_index(user_input)
  input = user_input.to_i
  index = input - 1
  return index
end

#MOVE  METHOD

def move(board, index, value)
  board[index] = value
end

#VALID_MOVE?  METHOD

def valid_move?(board, index)
  if index.between?(0, 8) 
     if position_taken?(board, index) == false
        return true
     else
        return false
     end
  else
     return false
  end
end

#POSITION_TAKEN?  METHOD

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
     return true
  else
     if board[index] == " " || board[index] == "" || board[index] == nil
        return false
     end
  end
end

#TURN  METHOD

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  if valid_move?(board, index = input_to_index(user_input)) == true
     move(board, index, value = "X")
     display_board(board)
  else
     puts "The move you selected is invalid, pleae try again!"
     turn(board)
  end
end

