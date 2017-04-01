def display_board(board)
     puts " #{board[0]} | #{board[1]} | #{board[2]} "
     puts "-----------"
     puts " #{board[3]} | #{board[4]} | #{board[5]} "
     puts "-----------"
     puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board,index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  board[index] != " "
end

def input_to_index(input)
  input.to_i-1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  user_input=gets.strip
  input=input_to_index(user_input)
  if valid_move?(board, input)
    move(board, input, )
    display_board(board)
  else
    turn(board)      
  end
end
#get input
#convert input to index
#if index is valid
#  make the move for input
#else
#  ask for input again until you get a valid input
#end
  