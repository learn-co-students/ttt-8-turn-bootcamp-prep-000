def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
  valid_move(board, input_to_index(input))
end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif !(index.between?(0, 8))
    false
  else
    true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
end

def move(board, position, character="X")
  board[position.to_i] = character
end
