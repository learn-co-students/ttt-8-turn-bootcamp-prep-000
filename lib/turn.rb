# code your #valid_move? method here
def valid_move?(board, index)
  if(!position_taken?(board,index) && index.between?(0,8))
    return true
  else
    return false
  end
end
# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if ((board[index] == "X") || (board[index] == "O") )
    return true
  else
    return false
  end
end
# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board,index)
    turn(board)
  else
    move(board,index)
    display_board(board)
  end
  #until valid_move?(board,index)
  #  input = gets.strip
  #  index = input_to_index(input)
  #  valid_move?(board,index)
  #end
end
def move(board, index, current_player = "X")
  board[index] = current_player
end
