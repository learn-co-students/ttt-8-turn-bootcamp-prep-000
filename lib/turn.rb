def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def move(board, position, letter = "X")
  board[position] = letter
  display_board(board)
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || "O"
    true
  end
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false
  end
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  user_num = input_to_index(input)
  is_valid_or_not = valid_move?(board, user_num)
  if is_valid_or_not == false
    turn(board)
  elsif is_valid_or_not == true
    move(board, user_num)
  end
end
