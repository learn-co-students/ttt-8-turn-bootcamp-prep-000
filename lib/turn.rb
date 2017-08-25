def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else false
  end
end

def valid_move?(board, index)
  if (index >= 0 && index <= 8) && !(position_taken?(board, index))
    true
  else false
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if(valid_move?(board, index))
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
