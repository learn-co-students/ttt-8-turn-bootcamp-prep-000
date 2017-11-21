def display_board(board)
  puts "-----------"
  puts " X | X | X "
  puts " X | X | O "
  puts " X | O | O "
  puts " O | O | O "
  puts " O | O | X "
  puts " O | X | X "
  puts " X | O | X "
  puts " O | X | O "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def move(board, index, character)
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  valid_move?(board, index) == true
end
