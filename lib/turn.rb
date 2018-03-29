# A turn of tic tac toe.

# Helper methods:

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  (0 <= index) && (index <= 8) && (!(position_taken?(board, index)))
end

def position_taken?(board, index)
  position = board[index]
  !(position == " " || position == "" || position == nil)
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, move, character = "X")
  board[move] = character
end

def turn(board)
  puts "Please enter 1-9:"
  location = gets.strip
  location = input_to_index(location)
  if valid_move?(board, location)
    move(board, location, "X")
    display_board(board)
  else
    turn(board)
  end
end