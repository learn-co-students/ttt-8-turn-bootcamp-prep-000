def display_board(board)
  bar = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts bar
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts bar
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(number)
  index = number.to_i - 1
end

def valid_move?(board, index)
  index.between?(0,8) && position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] == "" || board[index] == " " || board[index] == nil
end

def move(array, index, value = "X")
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if valid_move?(board, index)
    move(board, index, value = "X")
    display_board(board)
  else
    turn(board)
  end
end
