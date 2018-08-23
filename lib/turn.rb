# display_board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# valid_move method
def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
    true
  elsif position_taken?(board, index) == true
    false
  end
end

# position_taken method
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

# input_to_index method
def input_to_index(user_input)
  @index = user_input.to_i - 1
end

# move method
def move(board, index, character="X")
  board[index] = character
end

# turn method
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  input_to_index(user_input)
  if valid_move?(board, @index) == true
    move(board, @index, character="X")
    display_board(board)
  else turn(board)
  end
end


