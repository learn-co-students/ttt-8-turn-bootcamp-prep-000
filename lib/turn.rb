def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, i)
  (position_taken?(board, i) || i < 0 || i > 8) ? 
    false : true
end

def position_taken?(board, i)
  (board[i] == " " || board[i] == "" || board[i] == nil) ?
    false : true
end

def move(board, i, char = "X")
  board[i] = char
end

def input_to_index(i)
  i.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  i = gets.strip
  i = input_to_index(i)
  if valid_move?(board, i)
    move(board, i)
    display_board(board)
  else
    turn(board)
  end
end

