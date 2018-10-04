# code your #valid_move? method here
def valid_move?(board, index)
  if(position_taken?(board, index) && index >= 0 && index <= 8)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if(board[index] == " " || board[index] == "" || board[index] == nil)
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
def input_to_index(str)
  str.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)
  
  if(valid_move?(board, input))
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end
