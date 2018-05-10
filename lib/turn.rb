def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  num = input_to_index(input)
  if valid_move?(board, num)
    move(board, num, "X")
    display_board(board)
  else
    turn(board)
  end
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
  case board[index].to_s.strip
  when "X" || "O"
    false
  else
    true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index)
    true
  else
    false
  end
end

def move(board, index, player="X")
  board[index] = player
  board
end





