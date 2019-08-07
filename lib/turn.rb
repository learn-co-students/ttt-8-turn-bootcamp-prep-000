def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.to_i > 8 || index.to_i < 0
    return false
  else
    return position_taken?(board, index.to_i) == false
  end
end

def position_taken?(board, index)
  if board[index.to_i] == " " || board[index.to_i] == "" || board[index.to_i] == nil
    return false
  else
    return true
  end
end

def input_to_index(index)
  index = index.to_i
  index -= 1
end

def move (array, index, value = "X")

  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  index = input_to_index(num)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
