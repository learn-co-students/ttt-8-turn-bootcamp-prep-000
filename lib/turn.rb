def input_to_index(input)
  input = input.to_i
  input = input - 1
end

def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def move(board, position, character = "X")
  board[position] = character
end

def valid_move?(board, position)
  position.between?(0, 8) && !position_taken?(board, position)
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if !valid_move?(board, input)
    turn(board)
  end
  move(board, input)
  display_board(board)
end
