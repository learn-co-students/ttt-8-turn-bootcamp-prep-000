board = board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = (user_input.to_i) - 1
  return index
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  end
  if board[index] == "X" || board[index] == "O"
    return true
  end
end

def valid_move?(board, index)
  spot = index.to_i
  if position_taken?(board, spot) == false && spot.between?(0, 8)
    return true
  else
    return false
  end
end

def move(board, index, char = "X")
 if valid_move?(board, index) == true
    board[index] = char
    return board
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip do
    input_to_index(user_input)
  end
  if valid_move?(board, index) == 
  end
end
