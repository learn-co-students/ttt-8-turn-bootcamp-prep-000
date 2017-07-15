#display_board method to show the current state of board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} \n-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false
  end
end

def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_input = input_to_index(user_input)
  if valid_move?(board, user_input)
    move(board, user_input)
    display_board(board)
  else
    turn(board)
  end
end
