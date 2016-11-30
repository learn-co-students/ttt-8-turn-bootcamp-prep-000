def display_board(array)
  print " #{array[0]} | #{array[1]} | #{array[2]} \n"
  11.times{ print "-" }
  puts
  print print " #{array[3]} | #{array[4]} | #{array[5]} \n"
  11.times{ print "-" }
  puts
  print print " #{array[6]} | #{array[7]} | #{array[8]} \n"
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == true || index.between?(0,8) == false
    return false
  else
    return true
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move (board_array, index_tofill, character = "X")
  board_array[index_tofill] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end

end
