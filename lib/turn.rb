# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, token = "X")
  board[index] = token
end
  
def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  while !valid_move?(board, index)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  end
  move(board, index, "X")
  display_board(board)
end

def input_to_index(input)
  return input.to_i - 1
end

# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board, index) || !index.between?(0, 8)
    return false
  end
  return true
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " "
    return false
  else
    return true
  end
end