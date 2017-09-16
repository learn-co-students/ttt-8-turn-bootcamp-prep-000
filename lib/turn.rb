def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(n)
  n.to_i-1
end

def move(board, index, symbol="X")
  board[index] = symbol
end

def valid_move?(board, index)
  if !index.between?(0,8)
    false
  elsif position_taken?(board,index)
    false
  else
    true
  end
end

def position_taken?(board, index)
  pos = board[index]
  if pos == "" || pos == " " || pos == nil
    return false
  end
  true
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board, index)
  else
    puts "Invalid input."
    turn(board)
  end
  display_board(board)
end
