def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  if index >= 0 && index <= 8 && !position_taken?(board, index)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else true
  end
end

def move(board, index, token = "X")
board[index] = token
end

def input_to_index(input)
index = input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
    if valid_move?(board, index) == true
      move(board, index)
    else turn(board)
      end
  display_board(board)
end
