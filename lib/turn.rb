#helper methods

def display_board(board)
  horizontal_line = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts horizontal_line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts horizontal_line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if position_taken?(board,index)
    return false
  elsif index.between?(0,8)
    return true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board,index)
    move(board, index, char="X")
    display_board(board)
  else
    turn(board)
  end
end
