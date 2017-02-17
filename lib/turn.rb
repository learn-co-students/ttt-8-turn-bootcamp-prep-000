def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  index.between?(0,8) && !position_taken?(board,index)
end

def position_taken?(board, index)
  (board[index] ==  " " || board[index] == "" || board[index] == nil) ?
    false : true
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, position,char="X")
  board[position] = char
end

def turn(board)
  puts "Please enter 1-9:"
  position = input_to_index(gets.strip)
  if valid_move?(board,position)
    move(board,position)
  else
    turn(board)
  end
  display_board(board)
end
