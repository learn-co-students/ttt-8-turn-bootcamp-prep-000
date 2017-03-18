def display_board(board)
  separator = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts separator
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts separator
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end

def valid_move? (board, index)
  if ((index.between?(0, 8)) && !(position_taken?(board, index)))
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def move(board, index, player = "X")
  board[index] = player
  board
end

def turn(board)
  puts "Please enter 1-9:"
  display_board(board)
  index = input_to_index(gets.strip)
  if (valid_move?(board, index) == true)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
