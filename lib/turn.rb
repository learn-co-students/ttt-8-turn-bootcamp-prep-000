def display_board(board)
  print " #{board[0]} " + "|" + " #{board[1]} " +  "|" + " #{board[2]} "
  puts
  print "-----------"
  puts
  print " #{board[3]} " + "|" + " #{board[4]} " +  "|" + " #{board[5]} "
  puts
  print "-----------"
  puts
  print " #{board[6]} " + "|" + " #{board[7]} " +  "|" + " #{board[8]} "
  puts
end


def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def valid_move?(board, user_input)
  if position_taken?(board, user_input) || !user_input.between?(0,8)
    false
  else
    true 
  end
end

def position_taken? (board, user_input)
  if board[user_input] == " "
    false 
  elsif board[user_input] == ""
    false
  elsif board[user_input] == nil 
    false
  else
    true
  end
end

def move(board, user_input, player_character="X")
  board[user_input] = player_character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_input = input_to_index(user_input)
  if valid_move?(board, user_input)
    move(board, user_input, player_character="X")
  else
    turn(board)
  end
  display_board(board)
end

