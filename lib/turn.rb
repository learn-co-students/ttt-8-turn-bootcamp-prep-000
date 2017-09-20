def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if (valid_move?(board, index))
    move(board, index)
    display_board(board)
  else
    puts "Invalid move."
    turn(board)
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, player="X")
  board[index] = player
  board
end

def valid_move?(board, index)
  if (index.between?(0,8) && !position_taken?(board, index))
    true
  end
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    false
  else
    true
  end
end
