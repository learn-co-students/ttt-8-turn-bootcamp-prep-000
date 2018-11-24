def turn (board)
 
 puts "Please enter 1-9:"   
  index = input_to_index(gets.strip)
  until valid_move?(board,index)
   puts "Please enter 1-9: "  
    index = input_to_index(gets.strip)
    # gets.strip
    # index = input_to_index(position)
  end
  move(board, index)
  display_board(board)
end
    

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method

def move (board, index, value="X")
  board [index] = value
  return board
end


def input_to_index (input)
  index = input.to_i - 1 
  return index
end

# code your #valid_move? method here
def valid_move?(board, index)
if !(index.between?(0,8))
  return false
elsif position_taken?(board, index)
  return false 
else 
  return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if (board[index] == "" || board[index] == nil || board[index] == " " )
    return false
  else
    return true
  end
end



