def display_board(board)
  cells_first = " #{board[0]} | #{board[1]} | #{board[2]} "
  cells_second = " #{board[3]} | #{board[4]} | #{board[5]} "
  cells_third = " #{board[6]} | #{board[7]} | #{board[8]} "
  rows = "-----------"
  puts cells_first
  puts rows
  puts cells_second
  puts rows
  puts cells_third
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end

def valid_move?(board, index)
  if index.between?(0,8) == true && position_taken?(board, index) == false
    true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  until valid_move?(board, index) == true
    turn(board)
    break
  end
  move(board, index, char = "X")
  display_board(board)
end
