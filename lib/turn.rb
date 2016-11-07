def valid_move? (board, index)
  if position_taken?(board, index)
    false
  elsif index >= 0 && index <= 8
    true
  else
    false
  end
end


def position_taken? (board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(n)
   n = n.to_i - 1
end


def move(b, ind, x_or_o="X")
  b[ind] = x_or_o
end

def turn (board)
  puts "Please enter 1-9:"
  choice = input_to_index(gets.chomp)
  if valid_move?(board, choice)
    move(board, choice)
  else
    puts "Please enter a valid move."
    choice = input_to_index(gets.chomp)
  end
  display_board(board)
end
