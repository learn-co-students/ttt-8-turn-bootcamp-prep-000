#display_board - Should accept a board as an argument and print out the current state of the board for the user.

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
##input_to_index
#converts a user_input to an integer
#subtracts 1 from the user_input
#returns -1 for strings without integers

def input_to_index(user_input)
  # user_input = gets.strip
  converted_input = user_input.to_i
  converted_input - 1 
end

#move
#This method should accept a board, an index from the user (which was converted from their raw input with input_to_index), and a token to mark that position with (you can give that argument a default value of 'X'––we're not worrying about whose turn it is yet). The method should set the correct index value of that position within the board equal to the token.


def move(board, converted_input, c3 = "X")
    board[converted_input] = c3
end

 #valid_move? returns true/false based on index
 
def valid_move?(board,index)
    if index.between?(0, 8) && !(position_taken?(board, index))
    true
  else 
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.


def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else board[index] == "" || board[index] == " " || board[index] == nil
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip #gets input
  var = input_to_index(user_input) #converts input to index
  if valid_move?(board,var) == true #if indec is valid/make move
    move(board, var , c3 = "X")
    display_board(board)
  else 
    puts "this spot is invalid"
    display_board(board)
    turn(board)
  end 
end

    
    #get input
#convert input to index
#if index is valid
  #make the move for input
#else
 # ask for input again until you get a valid input
#end