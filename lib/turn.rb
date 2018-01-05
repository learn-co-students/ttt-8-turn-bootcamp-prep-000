def turn(board)
#   get input
# convert input to index
# if index is valid
#   make the move for input
# else
#   ask for input again until you get a valid input
# end
  puts "Please enter 1-9:"
  index = input_to_index(gets.chomp)
  unless valid_move?(board,index)
    puts "Please enter 1-9:"
    index = input_to_index(gets.chomp)
  end
  move(board, index,"X")
  display_board(board)


end

def input_to_index(str)
  str.to_i - 1
end

def move(board_arr, index, char='X')
  update_array_at_with(board_arr, index, char)
  true
end

def update_array_at_with(array, index, value)
  array[index] = value
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board_arr, index)

  return false if board_arr[index] == " " || board_arr[index] == ""
  return false if board_arr[index] == nil
  true
end

def valid_move?(board_arr, index)
  if index.between?(0 , 8)
    if position_taken?(board_arr, index)
      false
    else
      true
    end
  else
    false
  end
end
