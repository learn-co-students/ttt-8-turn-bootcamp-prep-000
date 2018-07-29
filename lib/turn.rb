#helps to print rows for display_board method
def printRow(x, y, z)
  puts " #{x} | #{y} | #{z} "
end

def display_board(board)
  printRow(board[0], board[1], board[2])
  puts "-----------"
  printRow(board[3], board[4], board[5])
  puts "-----------"
  printRow(board[6], board[7], board[8])
end

def input_to_index(n)
  return n.to_i - 1
end 

def valid_move?(board, i)
  if (position_taken?(board, i) == false) && (i.between?(0, 8))
    return true
  else
    return false
  end
  
end 

def position_taken?(board, i)
  if board[i] == "X" || board[i] == "O"
    return true 
  else
    return false 
  end
end 

def move(board, i, char="X")
  board[i] = char
  return board
end 

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end
