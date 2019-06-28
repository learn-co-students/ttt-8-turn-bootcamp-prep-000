def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
end

def move(board, index, char="X")
  board[index] = char
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    true
  end
end

def position_taken?(board, index)
  # if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
  # below makes use of short-circuit nature of evaluation in Ruby
  if (!board[index]) || (board[index].strip == "") 
    false
  else
    true
  end
end

def turn(board)
  
  # get index
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  
  # recursive implementation
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
  
end