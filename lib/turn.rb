def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  user_input = input.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
  board
end

def valid_move?(board, index)
  if index.between?(0, 8) == false || position_taken?(board, index) == true
    false
  elsif position_taken?(board, index) == false
    true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif (board[index] == "X") || (board[index] == "O")
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input.to_i
  if input.between?(1, 9)
    index = input_to_index(input)
    valid_move?(board, index)
    move(board, index,)
    display_board(board)
  else
    turn(board)
  end
end
