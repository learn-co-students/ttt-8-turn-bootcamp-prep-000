def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (input)
  index = input.to_i - 1
  return index
end

def valid_move?(board, index)
  if (index.between?(0, 8) && !position_taken?(board, index))
    return true
  end
  return false
end

def position_taken?(board, index)
  if (board[index] == "" || board[index] == " " || board[index] == nil)
    return false
  end
  return true
end

def move(board, index, value = "X")
  board[index] = value
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if (valid_move?(board, index))
    board = move(board, index)
  else
    puts "Invalid move!"
    turn(board)
  end
  display_board(board)
end