#board array and a method accepting board as an argument then prints out the board for the user 

puts "Welcome to Tic Tac Toe!"


board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  puts "-----------"
end

display_board(board)

#method that checks to see if the position selcted on the board is an "X" or an "O" or empty
def position_taken?(board, index)
  if(board[index] == "X" || board[index] == "O")
     true
     
  else board[index] == nil
    false
    
  end
end


#method should set the correct index value of that position within the board to equal to the token ("X || O"). Checks user's input to the array index  and converts the string to an integer
def input_to_index(user_input)
  user_input.to_i - 1
end


#method that checks to see if the position selected is a valid move from 0-8 and the position has not be selected 

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board,index)
    true
    
  else 
    false
  end
end


#method takes 3 arguments returns the modified array with the updated index corresponding to the players token. Use the passed in argument to modify the  array[index] value and return it
def move(board, index, value="X" )
  board[index] = value
end


#method that asks the user to take a turn selecting a position on the board

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


