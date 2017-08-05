def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip.to_i) # get input # convert input to index
  if valid_move?(board, input) # if index is valid
    move(board, input)#   make the move for input
    display_board(board)
  else# else
    turn(board)#   ask for input again until you get a valid input
  end # end
end
# *******************************************************************************
def valid_move?(board,index)
  if index.between?(0,8)
    return !position_taken?(board,index)
  end
end


def position_taken?(board,index)
  if board[index] == " " ||  board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
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
  (user_input.to_i)-1
end

def move(board,index,value="X")
  board[index]=value
end
