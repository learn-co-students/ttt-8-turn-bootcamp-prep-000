def valid_move?(board, index)
  if (index.between?(0, 8) && position_taken?(board, index) == false)
    return true
  else
    return false
  end
end

def position_taken? (board, index)
  if (board[index] == "")
    return false
  elsif (board[index] == " ")
    return false
  elsif (board[index] == nil)
    return false
  elsif (board[index] == "X" || "O")
    return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
  return user_input
end

def move(board, index, value = "X")
  board[index] = value
end

# ask for input
# get input
# convert input to index
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again until you get a valid input
# end

# #turn
#    asks the user for input by printing: "Please enter 1-9:" (FAILED - 1)
#    gets the user input (FAILED - 2)
#    calls the input_to_index method (FAILED - 3)
#    validates the input correctly (FAILED - 4)
#    asks for input again after a failed validation (FAILED - 5)
#    makes valid moves (FAILED - 6)
#    displays a correct board after a valid turn (FAILED - 7)

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index,)
    display_board(board)
  else
    turn(board)
  end
end
