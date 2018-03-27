#Display_board method helper_method
#Should accept a board as an argument and print out the current state of the board for the user.

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)

input.to_i - 1

end



#VALID_MOVE?
#Should accept a board and an index from the user and return true if the index is within the correct range of 0-8 and is currently unoccupied by an X or O token.


 def valid_move?(board, index)
    if index.between?(0,8) && !position_taken?(board, index)
     true
   end
  end
    
  # True for valid move on a empty board
  # true for a valid position on a non empty board
  # returns nil or false for an occupied position
  # returns nil or false for a position that not #on the board


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
 
 def position_taken?(board,index)
   board[index] != "" && board[index] != " " && board[index] != nil
 end


#MOVE
#This method should accept a board, an index from the user (which was converted from their raw input with input_to_index), and a token to mark that position with (you can give that argument default value of 'X'––we're not worrying about whose turn it is yet). The method should set the correct index value of that position within the board equal to the token.


def move(board, index, token = "X")
  
  board[index] = token
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
  
  
  
  
  
  