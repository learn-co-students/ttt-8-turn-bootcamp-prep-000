def display_board(board)
  puts "  #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts "  #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts "  #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0,8) && position_empty?(board[index])
    true
  end
end

def position_empty?(index)
  if index == "" || index == " " || index == nil
    true
  end
end

def move(board, index, player = "X")
  if valid_move?(board, index)
    board[index] = "#{player}"
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    "INVALID INPUT"
    turn(board)
  end
end