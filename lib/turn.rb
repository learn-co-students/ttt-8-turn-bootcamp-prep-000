

def display_board(board)
  top_cell = " #{board[0]} | #{board[1]} | #{board[2]} "
  mid_cell = " #{board[3]} | #{board[4]} | #{board[5]} "
  btm_cell = " #{board[6]} | #{board[7]} | #{board[8]} "
  row = "\n-----------\n"
  blank_board = top_cell + row + mid_cell + row + btm_cell + "\n"
  print blank_board
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def valid_move?(board, index)
  if (index >= 8 || index < 0 || index == !Fixnum)
    puts "Not a valid move. Try again."
    return false
  elsif position_taken?(board, index)
    puts "Position taken. Try again."
    return false
  else
    return true
  end
end


def input_to_index(user_input)
  index = (user_input.to_i)-1
  return index
end

def move(array, index, value = "X")
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

  until valid_move?(board, index)
    user_input = gets.strip
    index = input_to_index(user_input)
  end
  move(board, index, value = "X")
    display_board(board)
end
