def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil then false
  elsif board[index] == "X" || board[index] == "O" then true
  end
end

def valid_move?(board, index)
  if index.between?(0,8) &&
    position_taken?(board,index) == false then true
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, input_to_index, character = "X")
  board[input_to_index.to_i] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    puts  "Please enter 1-9:"
    input = gets.strip
  end
end
