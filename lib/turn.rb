def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif !(index).between?(0,8)
    false
  else
    true
  end
end

def position_taken?(board, index)
  if (board[index] === " ") || (board[index] === "") || (board[index] === nil)
    false
  else
    true
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, position, character="X")
  board[position] = character
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.chomp)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end
