# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif index.between?(0, 8)
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
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
def input_to_index(num)
  num = num.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end


#turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  until valid_move?(board, input)
    puts "Invalid entry. Please enter 1-9:"
    input = gets.strip
    input = input_to_index(input)
  end
  move(board, input)
  display_board(board)
end
