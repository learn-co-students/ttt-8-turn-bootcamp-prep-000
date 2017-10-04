def display_board(board)
  row_sep = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts row_sep
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts row_sep
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  index.between?(0,8) && board[index]==" "
end

def move(board,index,token="X")
  board[index]=token
end

def input_to_index(input)
  input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  #input = gets.strip.to_i
  #index = input - 1
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end
