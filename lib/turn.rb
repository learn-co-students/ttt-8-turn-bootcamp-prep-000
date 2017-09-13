def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
end

def position_taken?(board, token)
  if board[token] == " " || board[token] == "" || board[token] == nil
    false
  else
    true
  end
end

def valid_move?(board, token)
  if token.between?(0, board.length) && position_taken?(board, token) == false
    true
  else
    false
  end
end

def move(board, index, token = "X")
  board[index] = token
end


def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets)
  if valid_move?(board, index) == true
    move(board, index)
  else turn(board)
  end
  display_board(board)
end
