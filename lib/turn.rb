def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  puts "-----------"
end

def input_to_index(num)
  num = (num.to_i)
  num - 1
end

def move(array, index, char = "X")
  array[index] = char
end

def valid_move?(array, index)
  (!position_taken?(array, index) && (index.between?(0, 8))) ?
  true : false

end

def position_taken?(array, index)
  (array[index] == " " || array[index] == "" || array[index] == nil) ?
  false : true
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, "X")
  else turn(board)
  end
  display_board(board)
end
