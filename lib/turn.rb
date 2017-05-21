def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index >= 0 && index <= 8
    if position_taken?(board, index) == false
    true
  end
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
else
  false
end
end

def input_to_index(position)
return index = position.to_i - 1
end

def move(board,index,char="X")
  board[index] = char
end

def turn(board)
puts "Please enter 1-9:"
position = gets.strip
index = input_to_index(position)
 if valid_move?(board, index) == true
move(board, index, "X")
display_board(board)
else
turn(board)
end
end
