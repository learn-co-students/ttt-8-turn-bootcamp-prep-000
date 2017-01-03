def display_board(board)
  horizontal_div = "-----------"

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts horizontal_div
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts horizontal_div
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  empty_square = board[index] == ' ' || board[index] == '' || board[index] == nil
  return index.between?(0,9) && empty_square
end

def input_to_index(input)
  index = input.to_i
  return index-1
end

def move(board, index, symbol="X")
  board[index] = symbol
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
