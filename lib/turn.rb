
# Turn 

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
 
  if (valid_move?(board, index) === false)
    puts "Please enter 1-9:"
    input = gets.strip
    input_to_index(input)
    
  end
    move(board, index, value = "X")
    display_board(board)
end







# Move 
def input_to_index(number)
  strtoi = number.to_i - 1;
end

def move(array, index, value = "X")
  array[index]=value
end


# display_board


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



# Valid_move


def valid_move?(board, index)
   if position_taken?(board, index) == true
    return nil
  end
  
  if index.between?(0,8) 
    return true
  else
    return false
  end
 
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == " "
    return false
  end
  if board[index] == ""
    return false
  end
  if board[index] == nil 
    return false
  end
  if board[index] == "X" || board[index] == "O"
    return true 
  end
end

