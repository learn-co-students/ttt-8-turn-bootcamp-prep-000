
#define #valid_move?(board,index) if the index is between 0,8 and the position is available
#return true
def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  end
end

#define #position_taken?(board,index) which checks if the position is available.
def position_taken?(board,index)
  if board[index] != " "
    true
  end
end

#define #move(board, index, token) which calls #input_to_index.
#The method should set the correct index value of that position within the board equal to the token.
def move(board, index, token = "X")
  board[index] = token
  display_board(board)
end

# #input_to_index updated the index to integer.
def input_to_index(index)
  index = (index.to_i) - 1
end

#Define #display_board that accepts board as an argument and prints the board
def display_board(board)
  puts " #{board[0] } | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3] } | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6] } | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(input = gets.strip)
  if !valid_move?(board,index)
    turn(board)
  else
    move(board, index, token = "X")
  end
end
