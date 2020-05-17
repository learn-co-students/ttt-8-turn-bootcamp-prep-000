board = [" ", " ", " ", " ", " ", " ", " ", " ", " " ]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !(position_taken?(board, index)) && index.between?(0,8)
    true
  else
    false
  end
end

def position_taken?(board, index)
  position = board[index]
  if position == "" || position == " " || position == nil
    false
  elsif position == "X" || position == "O"
    true
  end
end

def input_to_index(index)
  index = index.to_i - 1
end

def move(board, index, player = 'X')
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board, index, player = 'X')
    puts display_board(board)
  else
    turn(board)
  end
end
