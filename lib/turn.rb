def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,ind)
  !(board[ind]==" " || board[ind]=="")
end

def valid_move?(board,ind)
  if(ind.between?(0,8) && !position_taken?(board,ind))
    true
  else
    false
  end
end

def input_to_index(inp)
  ind = inp.to_i-1
end

def move(board,ind,char="X")
  board[ind]=char
end

def turn(board)
  puts "Please enter 1-9:"
  uind = input_to_index(gets.strip)
  if valid_move?(board,uind)
    move(board,uind)
  else
    turn(board)
  end
  display_board(board)
end
