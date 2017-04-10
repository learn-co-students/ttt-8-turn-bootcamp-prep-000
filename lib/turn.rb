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

def move(board, user_input, char = "X")
  puts "Welcome to Tic Tac Toe!"
  board[user_input] = char
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "")
    false
  else
    true
  end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    true
  elsif !index.between?(0, 8)
    false
  else
    false
  end
end

#def execute(board)
#  board[user_input.to_i - 1] = "X"
#  puts " #{board[0]} | #{board[1]} | #{board[2]} "
#  puts "-----------"
#  puts " #{board[3]} | #{board[4]} | #{board[5]} "
#  puts "-----------"
#  puts " #{board[6]} | #{board[7]} | #{board[8]} "
#end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  until valid_move?(board, user_input.to_i - 1) do
    puts "Please enter 1-9:"
    user_input = gets.strip
  end
  move(board, user_input.to_i - 1, char = "X")
  display_board(board)
end
