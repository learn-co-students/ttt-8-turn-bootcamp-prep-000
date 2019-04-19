

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, value = "X")
  else
#    while (index < 0 && index > 8)
     puts "Please enter 1-9:"
     input = gets.strip
     index = input_to_index(input)
#    end
  end
  display_board(board)
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if valid_input?(index) && !(position_taken?(board, index))
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else
    return true
  end
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
  return index
end

def move(board, index, value = "X")
  board[index] = value
  return board
end

def valid_input?(index)
  if ((index > -1) && (index < 9))
    return true
  else
    return false
  end
end
