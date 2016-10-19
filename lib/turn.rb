def display_board(b)
puts " #{b[0]} | #{b[1]} | #{b[2]} "
puts "-----------"
puts " #{b[3]} | #{b[4]} | #{b[5]} "
puts "-----------"
puts " #{b[6]} | #{b[7]} | #{b[8]} "
end

# code your #valid_move? method here

def valid_move?(board, move)
  index = move-1
  if position_taken?(board, move) == false && move.between?(0,8) == true
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, position)
  if board[position] == "X"
    true
  elsif board[position] == "O"
    true
  elsif board[position] == " " || board[position] == ""
    false
  else board[position] == nil
    false
  end
end

def input_to_index(p)
  pos = p.to_i - 1
end

def move(board, pos, xo = "X")
  board[pos] = xo
end

def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip
  index = input_to_index(pos)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
