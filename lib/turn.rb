# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0,8)
    if !position_taken?(board, index)
      return true
    end
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
return true
end


# Displays the game board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  num = input.to_i
  num -=1
  return num
end

#Updates the game board according to the player's move
def move(board, pos, character= "X")
  update_array_at_with(board, pos, character)
end

def update_array_at_with(array, index, value)
  array[index] = value
  
  return array
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
