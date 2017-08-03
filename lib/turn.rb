def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def place_taken?(board, index)
  if board[index] == "X"
    return true
  end
end

def valid_move?(board, index)
  if !(index.between?(0, 8)) || place_taken?(board, index)
    return false
  else
    return true
  end
end

def move(board, index, character = "X")
  if valid_move?(board, index)
    board[index] = character
    return true
  end
end

def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
