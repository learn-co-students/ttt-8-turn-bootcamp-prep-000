def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board,index)
    display_board(board)
    turn(board)
  else
    puts "Please make a valid selection"
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input -= 1
  return user_input
end

def valid_move?(board, index)
  if index.between?(0,8) && index_check(board, index)
    TRUE
  elsif index.between?(0,8) && !index_check(board, index)
    puts "Selection taken"
    turn(board)
  else
    puts "Please make a valid selection"
    turn(board)
  end
end

def move(board, index, player = 'X')
  board[index] = player
end

def index_check(board, index)
  if board[index] == " "
    TRUE
  end
end