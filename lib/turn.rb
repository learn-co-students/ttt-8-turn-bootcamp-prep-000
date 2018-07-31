def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
user_input.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end

def position_taken?(board, index)
  taken = nil
if  board[index] == "" || board[index] == " " || board[index] == nil
  taken = false
else
  taken = true
  end
  taken
end

def valid_move?(board, index)
  move = nil
if index.between?(0,8) && position_taken?(board, index) == false
  move = true
end
move
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
index = input_to_index(input)
if valid_move?(board, index) == true
  move(board, index)
else
  turn(board)
end
display_board(board)
end
