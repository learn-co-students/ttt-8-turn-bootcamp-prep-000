def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}  "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]}  "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]}  "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  return false if index < 0
  board[index] == " "
end

def move(board, index, sign)
  board[index] = sign
end

def turn(board)
  puts "Please enter 1-9:"
  
  input = gets.chomp
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board, input, "X")
  else
    puts "Please enter 1-9:"
    input = gets.chomp
  end
    puts "Please enter 1-9:"
  display_board(board)
  
end