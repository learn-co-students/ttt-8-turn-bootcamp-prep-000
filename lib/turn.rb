def position_taken?(board, index)
  (board[index] ==  " " || board[index] == "" || board[index] == nil) ?
      false : true
end

def valid_move?(board, index)
if index.between?(0, 8) && position_taken?(board, index) == false
true
else false
end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
x = input.to_i
return x - 1
end


def move(board_array, user_index, user_symbol = "X")
board_array[user_index] = user_symbol
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else turn(board)
  end
end
