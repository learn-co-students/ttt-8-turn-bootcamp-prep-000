def display_board(board)
  row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  row2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  seperator = "\n-----------\n"
  puts [row1, row2, row3].join(seperator)
end


def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board,index)
end

def position_taken?(board,index)
  board[index] == "X" || board[index] == "O"
end

def move(board, index, character = "X")
  board[index] = character
end

def input_to_index(user_input)
  user_input.to_i - 1
end


def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board, index)
  else
    puts "Invalid move!"
    turn(board)
  end
  display_board(board)
end
