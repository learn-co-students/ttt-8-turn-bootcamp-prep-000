def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(number)
  number = number.to_i - 1
end

def move(array, index, character = 'X')
  array[index] = character
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets
  index = input_to_index(number)
  if valid_move?(board, index) == false
    turn(board)
  else
    move(board, index)
    display_board(board)
  end
end