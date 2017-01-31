def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, player_index)
  if position_taken?(board, player_index) == false  && (player_index >=0 && player_index < 10)
    true
  else
    false
  end
end

def position_taken?(board, player_index)
  if board[player_index]== " " || board[player_index] == "" ||  board[player_index] == nil
    false
  else
    true
 end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, board_index, player_char = "X" )
  board[board_index] = player_char
  board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index, "X")
    display_board(board)
  else
      turn(board)
  end
end
