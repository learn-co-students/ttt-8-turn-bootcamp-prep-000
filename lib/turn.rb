def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets)
  if valid_move?(board, index) == true
    move(board, index, value = "X")
    display_board(board)
  else turn(board)
  end
end

def input_to_index(index)
   index = index.to_i
  if index == " " || index == ""
    return index = -1
  else 
    return index = index.to_i - 1
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

 def valid_move?(board, index)

  if position_taken?(board, index) == false && index.between?(0, 8)
    return true
  else false
  end
 end

 # re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
 def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else true
  end
 end

 def move(board, index, value = "X")
   return board[index] = value
 end
