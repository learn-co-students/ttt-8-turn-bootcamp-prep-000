def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def position_taken?(board, user_input)
  if (board[user_input] == " " || board[user_input] == nil)
    false
  else
    true
  end
end

def valid_move?(board, user_input)
  if user_input.between?(0,8) && position_taken?(board, user_input) == false
    true
  else
    false
  end
end

def move(board, index, val = "X")
  board[index] = val
end

def turn(board)
  puts "Please enter 1-9:"
  inputs = gets.strip
  inputs = input_to_index(inputs)
  if valid_move?(board, inputs)
    move(board, inputs)
    display_board(board)
  else
    turn(board)
  end
end
