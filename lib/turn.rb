#####
# ruby method syntax
# def functionname(variable)
#    return <value>
# end


board = [" "," "," "," "," "," "," "," "," "]


def display_board(board)
  rows = [" #{board[0]} | #{board[1]} | #{board[2] } ", "-----------", " #{board[3]} | #{board[4]} | #{board[5] } ", "-----------", " #{board[6]} | #{board[7]} | #{board[8] } "]
  puts rows
end
#display_board(board) ### calls the method... need this??


#rspec --fail-fast     #### to see just first error, instead of all errors

def input_to_index(user_input) #this method converts the user_input into the 0-8 index, AKA the position on the board
  user_input = user_input.to_i # assign user_input to (user_input.to_i), which converts the user_input to an integer
  user_input = user_input-1 # assign user_input to (user_input-1), which substracts 1 from the user_input
  #the above line with the (user_input-1) also returns -1 for strings without integers
end


# code your #valid_move? method here

### i prefer it this way, i think it's more clear:
def valid_move?(board, index)
  if (index > 9) || (index < 0) #if index (position on board entered by user) is greater than 9 or less than 0, return false
    false
  elsif position_taken?(board, index) #otherwise, if position on board is taken, return false
    false
  else index.between?(0, 8) #finally, if the position isn't taken, and the index (position on board entered by user) is between 0 and 8, return true
    true
  end # end if...elsif statements
end # end valid_move? method

# ### another way to do, refactored so less lines of code (but i think more complicated)
# def valid_move?(board, index)
#   if (index > 9) || (position_taken?(board, index) )#if index (position on board entered by user) is greater than 9, OR if position on board is taken, return false
#     false
#   else index.between?(0, 8) #if the position isn't taken, and the index (position on board entered by user) is between 0 and 8, return true
#     true
#   end # end if...elsif statements
# end # end valid_move? method

#####

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == (" ") # if board array element at particular index (place within index) is equal to an empty string or nil
    false # return false
  elsif board[index] == ("") # if board array element at particular index (place within index) is equal to an empty string or nil
    false # return false
  elsif board[index] == (nil) # if board array element at particular index (place within index) is equal to an empty string or nil
    false # return false
  elsif board[index] == ("X") # if board array element at particular index (place within index) is equal to "X" or "O"
    true # return true
  elsif board[index] == ("O") # if board array element at particular index (place within index) is equal to "X" or "O"
    true # return true
  end # end if...elsif statements
end # end position_taken? method


###########

def move(board, index, token="X") # "X" is the default value for the token parameter
  board[index].replace(token) # replace board[index] (the position on the board) with the token
  #board.insert(index, token) # ---->> doesn't work::: insert adds to array, we want to replace items in array
end #end of method

############

def turn(board)
  puts "Please enter 1-9:" # add to this, invoke other methods within #turn
  user_input = gets # gets move from user
  index = input_to_index(user_input) ### <<<---- calls the input_to_index method, to convert the user_input into the 0-8 index, and assigns value of input_to_index(user_input) to local variable 'index'
  if valid_move?(board, index) == true # if valid_move? returns true, meaning we've validated the move...
    move(board, index, token="X") #...then we run the move method
    display_board(board) #...and display the board
  else turn(board) # if the user's move wasn't valid, we ruturnn this function again
  end # end if...else statement
end # end turn method
