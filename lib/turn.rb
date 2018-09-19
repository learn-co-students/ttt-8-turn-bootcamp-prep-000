def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  if index.between?(0, 9) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == nil || board[index] == ""
    return false
  else
    return true
  end
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def move(board, index, value = 'X')
  board[index] = value
end

def turn(board)
puts "Please enter 1-9:"
valid_input = gets
valid_input = input_to_index(valid_input)
if valid_move?(board, valid_input)
  move(board, valid_input)
  display_board(board)
else
  return turn(board)
end
end
