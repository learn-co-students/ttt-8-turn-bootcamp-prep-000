# code your #valid_move? method here

def valid_move?(board, index)
  if position_taken?(board, index) == true
    return false
  elsif index > 9
    return false
  elsif index < 0
    return false
  else
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X"
    true
  elsif board[index] == "O"
    true
  elsif board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else
    false
  end
end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  return input.to_i - 1
end

def move(array, index, xo="X")
  place = input_to_index(index) + 1
  array[place] = xo
  display_board(array)
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.chomp)
  if valid_move?(board, index) == false
    turn(board)
  end
  move(board, index)
end
