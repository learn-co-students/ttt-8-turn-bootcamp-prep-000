def display_board(board)
  hori = "-----------"

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts hori
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts hori
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.strip.to_i - 1
end

def valid_move?(board, index)
  index >= 0 && index <= 8 && (board[index] == " " || board[index] == "" || board[index] == nil)
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if(!valid_move?(board, index))
    turn(board)
  else
    move(board, index)
    display_board(board)
  end
end
