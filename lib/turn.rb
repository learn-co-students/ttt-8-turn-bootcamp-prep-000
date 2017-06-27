
def display_board(board)
  a = board[0]
  b = board[1]
  c = board[2]
  d = board[3]
  e = board[4]
  f = board[5]
  g = board[6]
  h = board[7]
  i = board[8]
  puts " #{a} | #{b} | #{c} "
  puts "-----------"
  puts " #{d} | #{e} | #{f} "
  puts "-----------"
  puts " #{g} | #{h} | #{i} "
end

def position_taken?(board, index)
  if board[index] != " "
    true
  else
    false
  end
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false
  end
end

def input_to_index(number)
  number.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if valid_move?(board, index)
    move(board, index)
  else
    until valid_move?(board, index)
      puts "Please enter 1-9:"
    end
  end
end
