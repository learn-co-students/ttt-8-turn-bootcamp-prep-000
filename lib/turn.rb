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

def valid_move?(board, idx)
  (!position_taken?(board, idx) && idx.between?(0, 8)) ? true:false
end

def position_taken?(board, idx)
  (board[idx] == " " || board[idx] == "" || board[idx] == nil) ? false:true
end

def move(board, idx, v="X")
  board[idx] = v
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  idx = input_to_index(input)

  if valid_move?(board, idx)
    move(board, idx, "X")
    display_board(board)
  else
    turn(board)
  end
end
