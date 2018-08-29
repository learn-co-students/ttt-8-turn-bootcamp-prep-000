def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  (board[index] == " " || board[index] == "" || board[index] == nil) 
end 

def input_to_index(input)
  input.to_i-1
end

def move(board, index, character = "X")
  board[index] = character
end

def valid_move?(board, index)
    (position_taken?(board, index)) && (index.between?(0,8))
end
