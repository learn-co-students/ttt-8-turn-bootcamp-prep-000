#DISPLAY_BOARD

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#INPUT_TO_INDEX

def input_to_index(arg)
  return arg.to_i - 1
end

#VALID_MOVE?

def valid_move?(board, index)

  if position_taken?(board, index) || index > 8 || index < 0
    return false
  else
    return true
  end

end

#POSITION_TAKEN

def position_taken?(board, index)

  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

#MOVE

def move(array, index, value = "X")

  array[index] = value

end

def turn(board)


#get input
  puts "Please enter 1-9:"
  input = gets.strip
#convert input to index
  index = input_to_index(input)
#if index is valid

  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end

  #displays a correct board after a valid turn
  display_board(board)
end


#ask for input
#get input
#convert input to index
#if index is valid
#  make the move for index
#  show the board
#else
#  ask for input again until you get a valid input
#end
