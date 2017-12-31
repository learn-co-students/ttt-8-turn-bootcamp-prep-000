require 'pry';

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, index, char)
  board[index] = char
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return false
  else 
    return true
  end
end

def valid_move?(board, index)
  if index < 0 || index > 8
    return false
  elsif board[index] == " "
    position_taken?(board, index)
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
  while valid_move?(board, input.to_i - 1) == false
    puts "Please enter 1-9:"
    input = gets.strip
    input_to_index(input)
    return valid_move?(board, input.to_i - 1)
  end
   move(board, input.to_i - 1, "X")
   display_board(board)
end
