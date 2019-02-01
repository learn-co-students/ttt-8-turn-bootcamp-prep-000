def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(int) 
  return int = int.to_i - 1 
end

def move(board, index, value = "X") 
    return board[index] = value
end

def valid_move?(board, index) 
  if (index <= 8 && index >= 0)
    return !position_taken?(board, index)
  end
end

def position_taken?(board, index)
  board[index] != " "
end

def turn(board) 
  puts "Please enter 1-9:"
  num = gets
  index = input_to_index(num)
  if (valid_move?(board, index))
    move(board, index)
  else 
    turn(board)
  end
  display_board(board)
end


