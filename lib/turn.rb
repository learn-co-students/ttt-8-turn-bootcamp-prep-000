def display_board(arr)
  puts " #{arr[0]} | #{arr[1]} | #{arr[2]} "
  puts "-----------"
  puts " #{arr[3]} | #{arr[4]} | #{arr[5]} "
  puts "-----------"
  puts " #{arr[6]} | #{arr[7]} | #{arr[8]} "
end

def input_to_index(input)
  input.strip.to_i - 1
end

def valid_move?(board, index)
  invalid = index.between?(0, 8)
  invalid && position_empty?(board, index)
end

def position_empty?(board, index)
  /\S+/.match(board[index]).nil?
end

def move(board, index, token="X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets)
  while !valid_move?(board, index)
    puts "Please enter 1-9:"
    index = input_to_index(gets)
  end
  move(board, index, token="X")
  display_board(board)
end
