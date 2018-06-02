def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
    
  
end

def input_to_index(input)
  input = input.to_i
  input = input - 1
end


def display_board(board)
  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end




def valid_move?(board, index)
  
  if position_taken?(board, index) == true
    return false
  else
    if [0,1,2,3,4,5,6,7,8].include? index 
      return true
    else
      return false
    end
  end
  puts "valid move called"
  
  
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  
  
  if board[index]=="X" 
    return true
  elsif board[index]=="O"
    return true
  elsif board[index]==" " || "" || nil
    false
  else
    print "I don't know"
  end
  
end

def move(board, index, token="X")
  board[index] = token

end