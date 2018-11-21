# require_relative '../bin/turn'

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  if position_taken?(board, index) || index < 0 || index > 9
    return false
    # elsif index < 0 || index > 9
    #   return false
  end
  return true
end

def position_taken?(board, index)
  if (board[index] == "X" || board[index] == "O")
    return true
  elsif (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  end
end


# code your input_to_index and move method here!
def input_to_index user_input
  number = user_input.to_i - 1
end

def move(board_array, index, value = "X")
  board_array[index] = value
end

# # def check_input
# #   if (condition)
# # =>
# #   end
# # end
def check_input_valid? user_input
  if (user_input >= 0 && user_input < 9)
  return  true
  end
  return false
end

def turn arr
  puts "Please enter 1-9:"
  user_input=gets.strip
  ind = input_to_index(user_input)
  if valid_move?(arr, ind) && check_input_valid?(ind)
    move(arr, ind)
  else turn(arr)
  end
  display_board(arr)
end
