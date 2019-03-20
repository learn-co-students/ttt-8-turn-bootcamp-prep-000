board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]

def input_to_index(str)
  num = str.to_i
  num -= 1
end

def valid_move? (board, index)
  if board[index]  == "X" || board[index] == "O" || index < 0 || index > 8
  print false
  elsif board[index] == " " || board[index] == "" || board[index] == nil && index.between?(0, 8)
  print true
  end
end

def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  puts index
  if index.between?(0,8)
  valid_move?(board, index)
  else
  print "Invalid Move"
  turn(board)
  end
end

turn(board)