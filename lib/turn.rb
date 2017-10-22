def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if index.between?(0,8) && !position_taken?(board,index)
    return true
  end
  return false
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == ""
    return false
  end
  if board[index] == "X" || board[index] == "O"
    return true
  end
  return false
end

def move(board,index,turn="X")
  board[index] = turn
end

def input_to_index(input)
  input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end
