def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
 if position_taken?(board, index) 
   return false
  elsif index.between?(0,8)
   return true
 end
end
  

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true 
  end
end

def move(board, index, value = "X")
 board[index] = value
end

def input_to_index(index)
  index = index.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  if valid_move?(board, index)
    return move(board, index, "X") && display_board(board)
   else
    return turn(board)
  end
  
end