def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif index > 8 || index < 0
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  if board[index.to_i] == "X" || board[index.to_i] == "O"
    return true
  else
    return false
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, player = "X")
  board[index] = "#{player}"
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
  # until valid_move?(board, index)
  #   puts "Please enter 1-9:"
  #   user_input = gets.strip
  #   index = input_to_index(user_input)
  # end
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
