def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  board[index] != " "
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def input_to_index(input)
    input = input.to_i - 1
end

def move(board, index, token = "X")
 board[index] = token
 display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if !valid_move?(board, index)
    puts "Please enter 1-9:"
    input = gets.chomp
  else
    move(board, index)
    end
end
