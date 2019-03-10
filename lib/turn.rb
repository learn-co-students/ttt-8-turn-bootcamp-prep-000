# code your #valid_move? method here
def valid_move?( board, index)

  if !position_taken?( board, index )
    if index >= 0 && index <= 8
      return true
    end
  end
  
  return false
  
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?( board, index)
  if board[index]==" " || board[index]=="" || board[index]==nil
    false
  else 
    true 
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

def input_to_index( position )
  position = position.to_i
  position = position - 1
end

# code for the move method 
def move( array, index, value="X" )
  array[index] = value
end

# code for a turn 
def turn(board)
  
   loop do
    puts "Please enter 1-9:"
    index = input_to_index( gets.chomp )
    if valid_move?( board, index )
      move( board, index)
      display_board( board )
      break
    else
      puts "That was an invalid entry"
    end
  end
end
