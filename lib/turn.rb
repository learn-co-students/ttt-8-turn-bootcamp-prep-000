def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == nil || board[index] == ""
    false
  else
    true
  end
end

def input_to_index(index)
  index.to_i - 1
end

def move(board, index, token = 'X')
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp.to_i
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
