def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
  input
end

def position_taken?(board, index)
  !(board[index] == nil || board[index] == " ")
end

def valid_move?(board, index)
index.between?(0,8) && !position_taken?(board, index)
end

def move(board, input, char = "X")
  board[input.to_i-1] = char
end