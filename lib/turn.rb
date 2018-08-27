
def turn(board)
  puts "Please enter 1-9:"
  index = (gets.strip).to_i
  index = input_to_index(index)
  
  if(valid_move?(board,index))
    move(board,index)
  else
    until valid_move?(board,index)
      puts "Please enter 1-9:"
      index = (gets.strip).to_i
      index = input_to_index(index)
     end
  end
  
  display_board(board)
    
end




def valid_move?(board, index)
  
  if(position_taken?(board,index))
    return false;
  elsif(index <= 8 && index >= 0)
    return true;
  else 
    return false;
  end
  
end


def position_taken?(board, index)
  if(board[index] === " " || board[index] ==="" || board[index] === nil)
    return false
  elsif(board[index] ==="X" || board[index] ==="O")
  return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input_i = input.to_i
  input_i = input_i - 1
end

def move(board,index,player = "X")
  
  board[index] = player
  
  #return modified array
end