def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def valid_move?(board, index)
   taken = position_taken?(board, index)
   if index.between?(0,8) && !taken
    true
   else
    false
   end
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == nil
    false
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, position, character = "X")
  board[position] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  position = input_to_index(input)
  valid = valid_move?(board, position)
  if !valid
    turn(board)
  else
    move(board,position)
    display_board(board)
  end
end
