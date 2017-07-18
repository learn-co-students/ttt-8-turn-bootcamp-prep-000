board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(string)
  string.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end

def valid_move?(board, index)
  if ((index > 8) || (index < 0))
    return false
  elsif board[index] == " "
    return true
  elsif ((board[index] == "X") || (board[index] == "O"))
    return false
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == " "
    return false
  elsif board[index] == nil
    return false
  elsif ((board[index] == "X") || (board[index] == "O"))
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == false
    turn(board)
  else
    move(board, index)
    display_board(board)
  end
end
