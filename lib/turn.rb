def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(number)
  number.to_i - 1
end

def valid_move?(board, index)
  if board[index] == "X" || board[index] == "O"
    false
  elsif index < 0 || index > 8
    false
  else
    true
  end
end

def move(board, index, character = "X")
  board[index] = character
  board
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board, index, character = "X")
  else
    index = input_to_index(gets.strip)
  end
  display_board(board)
end
