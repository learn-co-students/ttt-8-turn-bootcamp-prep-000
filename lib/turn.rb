def input_to_index(user_input)
  user_input.to_i - 1
end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def position_taken?(board, index)
  board[index]== "X" || board[index] == "O"
  # Creates a stop on RSpec
  # !(board[location].nil? || board[location] == "")
end
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end
def move(board, index, player)
  board[index] = player
end
def current_player(board)
  turn_count(board) % 2 == 0 ? "X" : "O"
end
def turn_count(board)
  board.count{|token| token == "X" || token == "O"}
end
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, current_player(board))
    display_board(board)
  else
    turn(board)
  end
end