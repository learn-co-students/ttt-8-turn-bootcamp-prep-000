def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0,8)
end

def position_taken?(board, index)
  value = board[index]
 !(value == "" || value == nil || value == " ")
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(array, index, value = 'X')
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  userValue = gets.strip
  index = input_to_index(userValue)
  if valid_move?(board, index)
    move(board, index, 'X')
    display_board(board)
  else
    turn(board)
  end
end
