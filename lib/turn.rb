def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (user_input)
  user_input.to_i - 1
end

def move(board,pos,char="X")
  board[pos]=char
  return board
end

def valid_move?(board, index)
  if index > 8 || index < 0
    return false
  elsif position_taken?(board,index)
    return false
  else
    return true
  end
end


def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  turn_in = gets.chomp
  turn_in = input_to_index(turn_in)
  is_valid = valid_move?(board,turn_in)
  if !is_valid
    turn(board)
  end
  move(board,turn_in,"X")
  display_board(board)
end