require "pry"

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, character="X")
  if valid_move?(board, index) == true
    board[index] = character
  end
end

def valid_position?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    true
  else
    false
  end
end

def valid_move?(board, index)
  if index.between?(0,8) && valid_position?(board, index)
    true
  else
    false
  end
end


def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
