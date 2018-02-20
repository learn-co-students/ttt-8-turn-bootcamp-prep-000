def turn (board)
  puts "Please enter 1-9:"
  position = gets.strip
  idx = input_to_index(position)
  if valid_move?(board, idx)
    move(board, idx)
  else 
    turn(board)
  end
  display_board(board)
end 


def input_to_index(index)
  index = index.to_i 
  index - 1
end
def display_board (board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

def valid_move? (board, index)
  if index >= 0
    (board[index] == "") || (board[index] == " ") || (board[index] == nil )
  else 
    false 
  end 
end 

def move (board, index, player = "X")
  board[index] = player
end 