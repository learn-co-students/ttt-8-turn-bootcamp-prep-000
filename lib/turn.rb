def display_board(array)
  divider = "-----------"
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts divider
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts divider
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, position, marker="X")
  board[position] = marker
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  position = input_to_index(position)
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end

end
