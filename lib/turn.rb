# prints arbitrary arrangements of the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index
#    converts a user_input to an integer
#    subtracts 1 from the user_input
#    returns -1 for strings without integers
def input_to_index(user_input)
  new_user_input = user_input.to_i - 1
end

#valid_move?
#    returns true/false based on index
def valid_move?(board, index)
  def position_taken?(array, ind)
    if array[ind] == "" || array[ind] == " " || array[ind] ==  nil
      return false
    else
      return true
    end
  end

  def on_board?(num)
    if num.between?(0, 8) == true
      return true
    else
      return false
    end
  end

  if (on_board?(index)) == true && (position_taken?(board, index)) == false
    return true
  else
    return false
  end
end

# move
#    allows "X" player in the bottom right and "O" in the top left
def move(board, index, character = "X")
  board[index] = character
  return board
end

#turn
#    asks the user for input by printing: "Please enter 1-9:"
#    gets the user input
#    calls the input_to_index method
#    validates the input correctly
#    asks for input again after a failed validation (FAILED - 1)
#    makes valid moves
#    displays a correct board after a valid turn

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip #chomp
  index = input_to_index(number)
  if  valid_move?(board, index) == true
      move(board, index)
      display_board(board)
  else
    turn(board)
  end
end
