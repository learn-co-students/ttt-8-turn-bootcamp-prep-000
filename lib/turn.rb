def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input = input_to_index(user_input)
  if valid_move?(board, input) == true
    move(board, input, "X")
  elsif valid_move?(board, input) == false
    turn(board)
  end
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index.to_i - 1
end

def valid_move?(board, index)
  #if !position_taken?(board, index) && index.between?(0, 8)
  if !position_taken?(board, index) && (index >= 0 && index <= 8)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def move(array, index, character="X")
  array[index] = character
end
