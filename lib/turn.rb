#!/usr/bin/env ruby
require_relative '../lib/turn'

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(i)
  n = i.to_i
  n - 1

end
# code your #valid_move? method here
def valid_move? (board, index)
  if index.between?(0, 8)
    if position_taken?(board, index) == false
      true
    else position_taken?(board, index) == true
      false
    end
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end

end

def move (board, index, turn = "X")
  board[index] = turn
end

def turn(board)
  puts "Please enter 1-9:"
  gets_index = gets.strip
  index = input_to_index(gets_index)
    if index.between?(0, 8) && valid_move?(board, index)
      move(board, index)
    else
      turn(board)
    end
  display_board(board)
end
