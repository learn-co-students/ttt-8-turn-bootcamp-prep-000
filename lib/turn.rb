def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !position_taken?(board, index) && valid_move?(board, index)
    move(board, index, token = "X")
    display_board(board)
  else
    turn(board)
  end
end
#calling a method inside itself is known as recursion and is a loop
#if the first turn does not result in a valid move the turn repeats
#make sure to define what index is so it can be referenced in the method

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

def move(board, index, token = "X")
  board[index] = token
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end
