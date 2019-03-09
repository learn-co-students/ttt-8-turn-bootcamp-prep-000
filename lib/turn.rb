require "pry"

def turn(board)
  index = 0
  temp = ""
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} "+"|"+" #{board[1]} "+"|"+" #{board[2]} "
  puts "-----------"
  puts " #{board[3]} "+"|"+" #{board[4]} "+"|"+" #{board[5]} "
  puts "-----------"
  puts " #{board[6]} "+"|"+" #{board[7]} "+"|"+" #{board[8]} "
end

def input_to_index(input)
  index = input.to_i-1
end

def valid_move? (board, index)
  if position_taken?(board, index) == true
    false
  elsif index < 0 || index > 8
    false
  else
    true
  end
end

def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move(board, index, x_or_o="X")
  puts "I entered #{x_or_o} at #{index+1} in response to the gets prompt."
  board[index]= x_or_o
  display_board(board)
  # binding.pry
end
