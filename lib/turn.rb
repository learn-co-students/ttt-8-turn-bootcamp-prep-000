# code your #valid_move? method here
def valid_move?(board, index)
  if index >= 0 && index < 9
    if board[index] != "X" && board[index] != "O"
      return true
    end
  end
  return false
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  end
  return false
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

def move(board, index, player = "X")
  board[index] = player
end

def handle_input(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    return index
  end
end

def turn(board)
  index = handle_input(board)
  while !index
    index = handle_input(board)
  end
  move(board, index)
  display_board(board)
end
