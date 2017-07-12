require 'pry'

def display_board (board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(i)
  index = i.to_i - 1
end

def move (board, i, char="X")
  board[i] = char
end

def position_taken?(board, index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

def valid_move?(board,index)
  if index < 0 || index > 8 || position_taken?(board,index)
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end
