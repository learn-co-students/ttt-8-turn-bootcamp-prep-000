def turn(board)
  puts "Please enter 1-9:"

  input = gets

  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end

  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  i = input.to_i
  index = i - 1
  return index
end

def move(board, index, character = "X")
  board[index] = character
end

def valid_move?(board, index)
  index.between?(0, board.length()) && !position_taken?(board, index)
end

def position_taken?(board, index)
  return board[index] == " " || board[index] == "" || board[index] == nil ? false : true
end
