def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board,index)
    return TRUE
  else
    return FALSE
  end
end

def input_to_index(input)
  input.to_i-1
end

def move(board, index, player="X")
  board[index] = player
  return board
end

def position_taken?(board,index)
  if board[index]==" "||board[index]==""||board[index]==nil
    return FALSE
  elsif board[index]=="X"||board[index]=="O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input=input_to_index(gets.strip)
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    puts "Please try again with 1-9:"
    turn(board)
  end
end