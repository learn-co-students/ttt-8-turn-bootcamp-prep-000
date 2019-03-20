def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  
  if valid_move?(board, index) == true
    move(board, index, value = "X")
    display_board(board)
  else
      turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
    true
  else
    false
  end
end

def position_taken?(array, index_number)
  if array[index_number] == " " || array[index_number] == "" || array[index_number] == nil
    false
  else
    true
  end
end

def move(array, index, value = "X")
  array[index] = value
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
end
