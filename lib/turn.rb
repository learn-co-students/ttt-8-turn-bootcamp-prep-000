def display_board(board_array=[" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board_array[0]} | #{board_array[1]} | #{board_array[2]} \n-----------\n #{board_array[3]} | #{board_array[4]} | #{board_array[5]} \n-----------\n #{board_array[6]} | #{board_array[7]} | #{board_array[8]} \n"
end

def valid_move?(board, index)
  if(index >=0 && index <=9 && !position_taken?(board, index))
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, index)
  if (board[index] == "X" || board[index] == "O")
    return true
  else
    return false
  end
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if(valid_move?(board, index))
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
