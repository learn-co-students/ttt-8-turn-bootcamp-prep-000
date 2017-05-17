def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  while !valid_move?(board, index)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  move(board, index)
  display_board(board)
end

def input_to_index(input)
  index = input.to_i-1
end

def move(board, index, char = "X")
  board[index] = char
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
  #board[index] != " "
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end
