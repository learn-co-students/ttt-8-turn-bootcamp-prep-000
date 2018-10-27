

def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

input = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) || (index < 0) || (index > 8)
    return false
  else return true
  end
end
  def position_taken?(board, index)
if board[index] == ""
  return false
elsif board[index] == " "
  return false
elsif board[index] == nil
  return false
else board[index] == "X" || "O"
  return true
  end
end

def move(board, input, value = "X")
board[input] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)

if
  valid_move?(board, input)
  move(board, input, value = "X")
  display_board(board)
else
  turn(board)
  end
end
