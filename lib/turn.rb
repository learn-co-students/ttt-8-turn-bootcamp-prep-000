def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
    if position_taken?(board, index) == true || !(index.between?(0,8))
      false
    elsif index.between?(0,8)
      true
  end
end

def position_taken?(array, index)
  if (array[index] == " ") || (array[index] == "") || (array[index] == nil)
    false
  elsif (array[index] == "X") || (array[index] == "O")
    true
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(array, index, value="X")
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
=begin Alternate Solution
    if valid_move?(board, index)
    move(board, index, value="X")
  elsif valid_move?(board, index) == false
    turn(board)
  end
=end
  while valid_move?(board, index) == false
    turn(board)
  end
  move(board, index, value="X")
  display_board(board)
end
