def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  if user_input.to_i.to_s == user_input
    user_input.to_i - 1 
  else 
    -1
  end
end

def position_taken?(board, index)
  (board[index] == "X" || board[index] == "O")?
  true : false
end

def valid_move?(board, index)
  (index >= 0 && index <= 8 && !position_taken?(board, index))?
  true : false
end

def move(board, index, mark = "X")
  board[index] = mark
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  while !valid_move?(board, index)
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
  end
  move(board, index)
  display_board(board)
  puts "Please enter 1-9:"
end
