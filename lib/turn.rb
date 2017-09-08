board = [" "," "," "," "," "," "," "," "," "]

def display_board
    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
end


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

def move(board, user_input, player="X")
  board[user_input] = player
end


board = [" "," "," "," "," "," "," "," "," "]

def valid_move?(board, user_input)
  user_input.between?(0,8) && !position_taken?(board, user_input)
end

board = [" "," "," "," "," "," "," "," "," "]

def position_taken?(board, index)
  board[index] != " "
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip.to_i - 1
  input_to_index(user_input)

  if valid_move?(board, user_input)
    move(board, user_input)
    display_board(board)
  else
    turn(board)
  end
end
