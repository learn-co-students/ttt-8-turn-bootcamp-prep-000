def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(number)
number.to_i - 1
end

def move(board, input_to_index, player = "X")
board[input_to_index] = player
return board
end

def valid_move?(board, index)
  if index == nil || index < 0 || index > 8
    false
  elsif position_taken?(board, index)
    false
  else
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  valid = valid_move?(board, input)
  if valid == true
    move(board, input, "X")
    display_board(board)
  else
    puts "please enter 1-9:"
    input = gets.strip
   end
end

def position_taken?(board, index)
 if board[index] == "X" || board[index] ==  "O"
   true
 elsif board[index] == " " || board[index] == "" || board[index] == nil
   false
 else 
   false
 end
end