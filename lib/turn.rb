#display the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# convert input to index
def input_to_index(input)
  input.to_i - 1
end

# check if move is valid
def valid_move?(board, index)
  if index >= 0 && index <= 8
    position_taken?(board, index)
  else false
  end
end

# check if position is taken
def position_taken?(board, index)
  if board[index] != " " && board[index] != "" && board[index] != nil
    false
  else true
  end
end

# add a move
def move(board, index, value= "X")
  board[index] = value
end

# turn
def turn(board)
input_check = false
  until input_check == true do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    input_check = valid_move?(board,index)
  end
  move(board,index)
  display_board(board)
end
