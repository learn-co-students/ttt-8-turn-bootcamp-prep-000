def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end

def valid_move?(board, index)
  if index < 0 || index > 9 || position_taken?(board, index)
    false
  else
    true
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  elsif board[index] == "X" or board[index] == "O"
    true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input=0)
  user_integer = user_input.to_i
  index = user_integer - 1
end

def move(array, index, value="X")
  array[index] = value
end
