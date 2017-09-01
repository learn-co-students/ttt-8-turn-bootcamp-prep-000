def display_board (board=[" ", " ", " ", " ", " ", " ", " ", " ", " "])
  div = "-----------"
  row = " #{board[0]} | #{board[1]} | #{board[2]} "
  puts(row)
  puts(div)
  row = " #{board[3]} | #{board[4]} | #{board[5]} "
  puts(row)
  puts(div)
  row = " #{board[6]} | #{board[7]} | #{board[8]} "
  puts(row)
end

def valid_move?(board,ind)
  if ind<0 || ind > 8
    return false
  end
  return !position_taken?(board,ind)
end

def position_taken?(board,ind)
  c = board[ind]
  return !(c=="" || c==" " || c==nil)
end

def move(board,ind,char="X")
  board[ind]=char
  return board
end

def input_to_index(str)
  return str.to_i-1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index)
  else
    turn(board)
  end
  display_board(board)
end
