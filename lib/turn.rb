def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end


def valid_move?(board, index)
  move = board[index]

  0 <= index &&
  index <= board.length - 1 &&
  move == " " ? true : false
end

def move(board, index, mark)
  board[index] = mark
  board
end

def turn(board)
  puts "Please enter 1-9:"
  move = input_to_index(gets.to_i)
  if valid_move?(board, move)
    board = move(board, move, "X")
    display_board(board)
  else
    turn(board)
  end
end
