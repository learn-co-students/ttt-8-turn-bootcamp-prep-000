def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
      #if ( position_taken?(board, index) == false ) && ( index.between?(0,8) )
      if valid_move?(board, index)   
         move(board, index)
         display_board(board)
      
      else turn(board)
        
      end
 
end



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move? (board, index)
  
  if ( position_taken?(board, index) == false ) && ( index.between?(0,8) )
      return true
      
  else
    
      #these lines cause duplicate lines to print in terminal
      #return false
      #puts "Please enter 1-9:"

      
  end
end


def position_taken? (board, index)

    if board[index] == (" ") || board[index] == ("") || board[index] == (nil)
      return false
    
    else 
      return true
    end  
end

# code your input_to_index and move method here!
def input_to_index (input)
  
  (input.to_i) - 1
end


# #move method takes three arguements ——— board array, index and team (X or O). ***Default*** is X
def move (board, index, team = "X")
  
    board [index] = team
end