def display_board(board)
  puts "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i
  index = index - 1
end

def valid_move?(board, index)
  if board[index] == " " && index.between?(0,8)
    return true
  elsif board[index] == "X" || board[index] == "O"
    return false
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end
