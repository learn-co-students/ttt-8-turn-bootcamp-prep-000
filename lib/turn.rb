
def display_board(arr)
  puts " #{arr[0]} | #{arr[1]} | #{arr[2]} "
  puts "-----------"
  puts " #{arr[3]} | #{arr[4]} | #{arr[5]} "
  puts "-----------"
  puts " #{arr[6]} | #{arr[7]} | #{arr[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else turn(board)
  end
  display_board(board)
end

def input_to_index(number)
  number.to_i - 1
end

def move(board_array, index, player = "X")
  board_array[index] = player;
end

def valid_move?(board, index)
  if position_taken?(board, index) || !index.between?(0, 8)
    false
  else
    true
  end
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end
