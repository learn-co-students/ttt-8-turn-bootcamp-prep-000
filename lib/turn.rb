# displaying the board
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
  input = input - 1
end

def move(array,index,character = "X")
  array[index] = character
end

def valid_move?(array, index)
  # make sure that the index is valid
  if (index < 0 || index > array.length)
    return false
  # make sure that the move itself is not already occupied
  elsif (array[index] != " ")
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if (!valid_move?(board,index))
    puts "That is not a valid move."
    turn(board)
  else
    move(board,index)
    display_board(board)
  end


end
