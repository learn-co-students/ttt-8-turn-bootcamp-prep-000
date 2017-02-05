#!/usr/bin/env ruby
def display_board
puts " #{board[0]} | #{board[1]}  | #{board[2]}   "
puts "-----------"
puts " #{board[3]}  | #{board[4]}  | #{board[5]}  "
puts "-----------"
puts " #{board[6]}  | #{board[7]}  | #{board[8]}  "
end

def move(board, location, current_player = "X")
  board[location.to_i-1] = current_player
end


def position_taken?(board, position)
   taken = nil

   if (board[position] ==  " " || board[position] == "" || board[position] == nil)
     taken = false
   else
     taken = true
   end
   taken
end

def valid_move?(board, position)
  if position.to_i.between?(1,9)
    if !position_taken?(board, position.to_i-1)
      true
    end
  end
end

def move(board, location, current_player = "X")
  board[location.to_i-1] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  until valid_move?(board, input) == true
      puts "Please enter 1-9:"
      input = gets.strip
    end
  move(board, input)
  display_board (board)
end
