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

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  end
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def move(board, index, tolken = "X")
  board[index] = tolken
end

def turn(board)
  puts "Please enter 1-9:"
  # get input
  player_move = gets.chomp
  # convert input to index
  player_move = input_to_index(player_move)
  # if index is valid
  if valid_move?(board, player_move)
    # make the move for input
    move(board, player_move, "X")
  # if not
  else
    # ask for input again until you get a valid input
    turn(board)
  end
  # once the turn is tracked, display the new board
  display_board(board)
end
