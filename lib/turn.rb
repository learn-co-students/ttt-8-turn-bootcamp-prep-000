def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, token = "X")
  board[index] = token
end
  
def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  while !valid_move?(board, index)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
end
  move(board, index, "X")
  display_board(board)
end

def input_to_index(input)
  return input.to_i - 1
end

def valid_move?(board, index)
if position_taken?(board, index) || !index.between?(0, 8)
    return false
  end
  return true
end


def position_taken?(board, index)
  if board[index] == " "
    return false
  else
    return true
  end
end 