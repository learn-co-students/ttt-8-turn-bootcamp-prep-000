# board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
#
# # CONVERT INPUT TO INDEX
def input_to_index(user_input)
  user_input.to_i - 1
end
#
# index = input_to_index(user_input)


# DISPLAY BOARD
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# VALID MOVE
def valid_move?(board, index)
  if !(position_taken?(board,index)) && index.between?(0,8)
    true
  else
    false
  end
end


# POSITION TAKEN
def position_taken?(board, index)

  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end


# MAKE A MOVE
def move(board, index, value = "X")
  board[index] = value
end


# TAKE A TURN
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index, value = "X")
  else
    turn(board)
  end
  display_board(board)
end
