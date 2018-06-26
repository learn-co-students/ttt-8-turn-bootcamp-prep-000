def display_board(array = [" "," "," "," "," "," "," "," "," "])
  puts " "+array[0]+ " | " +array[1]+ " | " +array[2]+" "
  puts "-----------"
  puts " "+array[3]+ " | " +array[4]+ " | " +array[5]+" "
  puts "-----------"
  puts " "+array[6]+ " | " +array[7]+ " | " +array[8]+" "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
      move(board,index)
      return display_board(board)
  end
  turn(board)
end

def input_to_index(input)
  return input.to_i - 1
end

def position_taken?(board, index)
if board[index] == " " || board[index] == "" || board[index] == nil
  return false
elsif board[index] == "X" || board[index] == "O" 
 return true
end
end

def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
    return true
  else
      return false
  end
end


def move(board, index, x_o="X")
  board[index] = "#{x_o}"
  return board
end