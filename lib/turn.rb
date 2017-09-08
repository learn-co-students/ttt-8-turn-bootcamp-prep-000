
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input = input_to_index(user_input)
  if valid_move?(board, input)
    move(board, input, value = "X")
    display_board(board)
  else
    turn(board)
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end


def valid_move?(board, index)
  if !(position_taken?(board, index)) && index.between?(0,8)
    return true
  else
    return false
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
  input = input.to_i
  return input - 1
end

def move (board, index, value = "X")
  board[index] = value
end
