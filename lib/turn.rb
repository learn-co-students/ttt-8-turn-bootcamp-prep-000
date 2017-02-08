def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index) == true
    false
  elsif !index.between?(0,8)
    false
  else
    true
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end

def input_to_index(player_move)
  num = player_move.to_i - 1
end

def move(board, index, character="X")
  board[index] = character
  board
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  index = input_to_index(position)

  if !index.between?(0,8)
    turn(board)
  elsif valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  end
end
