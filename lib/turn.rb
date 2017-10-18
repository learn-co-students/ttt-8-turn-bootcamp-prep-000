def display_board(board)
  divider = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts divider
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts divider
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  if !user_input.to_i
    return -1
  end
  index = user_input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  else
    return false
  end
end

def move(board, index, marker = "X")
  board[index] = marker
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end
