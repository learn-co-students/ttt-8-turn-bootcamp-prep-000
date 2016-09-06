# Display the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Check if move is valid - calls position_taken?
def valid_move?(board, index)
  if position_taken?(board, index) || !(index).between?(0,8)
    false
  else
    true
  end
end

# Checks if board position is taken
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] ==  nil
    false
  else
    true
  end
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def move(board, position, char = "X")
  board[position] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else
    puts "That is not a valid move: "
    turn(board)
  end
  display_board(board)
end
