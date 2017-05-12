def input_to_index(user_input)
  this = user_input.to_i
  index = this - 1
  return index
end

def display_board(b)
  row = "-----------"
  col = "|"
  def cell(num)
    return " #{num} "
  end
  board = cell(b[0]) + col + cell(b[1]) + col + cell(b[2]) + "\n" + row + "\n" + cell(b[3]) + col + cell(b[4]) + col + cell(b[5]) + "\n" + row + "\n" + cell(b[6]) + col + cell(b[7]) + col + cell(b[8])
  puts board
end

def valid_move?(board,index)
  if index < 0 || index > 8
    return false
  end
  if board[index] == "O" || board[index] == "X"
    return false
  else
    return true
  end
end

def move(board,index,char = "X")

  if valid_move?(board, index) == true
    board[index] = char
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
    if(index > -1 && index < 9)
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end
