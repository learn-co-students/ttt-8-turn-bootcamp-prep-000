def display_board(board)
  puts "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "---------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "---------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  return false if !index.between?(0,8)
  board[index] != "X" && board[index] != "O"
end

def move(board, index, char="X")
  board[index] = char
  board
end

def turn(board)
  puts "Please enter 1-9:"
  index = -1
  until index.between?(0,8)
  input = gets.strip
  index = input_to_index(input)
  end
  if valid_move?(board, index)
  move(board, index) 
  display_board(board)
end
end



def input_to_index(input)
  input.to_i - 1
end