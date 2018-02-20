def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  answer = input_to_index(input)
  if valid_move?(board, answer)
    move(board, answer)
    display_board(board)
else 
  turn(board)
  end
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
   false
   elsif board[index] == "X" || board[index] == "O"
   true
  end
end

def move(board, index, value = "X")
  board[index] = value
end











