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

def valid_move?(board, index)
  index.between?(0, 8) && position_taken?(board, index)
end

def position_taken?(board, index)
  if board[index] == " "
    true
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else
    false
end
end

def move(board, index, player = "X")
    board[index] = player
  end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    1
  else
    turn(board)
  end
  move(board, index, player = "X")
  display_board(board)
end
