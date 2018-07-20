def turn (board) 
  puts "Please enter 1-9:"
  input = gets
  input_index = input_to_index(input)
  if(valid_move?(board,input_index))
    move(board,input_index)
else turn(board)
end
  display_board(board)
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}  "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]}  "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]}  "
end

def valid_move?(board, index)
  if((board[index] == '' || board[index] == " " || board[index] == nil) && index.between?(0,8))
    return TRUE
  else return FALSE
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(input)
  input = input.to_i - 1 
end
  
  