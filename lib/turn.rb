def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def position_taken?(board, index)
  board[index] == "" || board[index] == " " || board[index] == nil
  board[index] == "X" || board[index] == "O"
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end

def move(board, index, player="X")
    board[index] = player
def move(board, index, user="X")
  if valid_move?(board, index)
    board[index] = user
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_input = input_to_index(user_input)
  if valid_move?(board, user_input)
    move(board, user_input)
    display_board(board)
  else
    puts "That is not a valid move."
    turn(board)
  end
end
