def input_to_index(input)
  index = input.to_i - 1
end

def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, character = "X")
  board[index] = character
end

def valid_move?(board, index)
  if (index.between?(0, 8) && !(position_taken?(board, index)))
    return true
  end
end

def position_taken?(board, index)
  if (board[index] == " " or board[index] == "" or board[index] == nil)
    return false
  elsif (board[index] == "X" or board[index] == "O")
    return true
  end
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if (valid_move?(board, index))
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end