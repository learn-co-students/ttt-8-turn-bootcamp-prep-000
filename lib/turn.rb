
def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts '-----------'
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts '-----------'
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

 def input_to_index(user_input)
   user_input.to_i - 1
 end

 def position_taken?(board, index)
   if board[index] == "" || board[index] == " " || board[index] == nil
     return false
   else
     return true
   end
 end

 def valid_move?(board, index)
   if index.to_i.between?(0,8) && !position_taken?(board, index.to_i)
     true
   end
 end

 def move(board, index, character = 'X')
   #take user input and convert it to the correct index(test is wrong for #move method)
  #  correct_index = input_to_index(index)
   #put the character in that index
   board[index] = character
 end

 def turn(board)
   puts 'Please enter 1-9:'
   input = input_to_index(gets.strip)
   #check that input is valid
   if valid_move?(board, input)
     move(board, input)
   else
     turn(board)
   end
   display_board(board)
 end
   #If it's valid, we convert it to the index on the board and put it in the correct index on the board
   #if it's invalid, we keep asking user for input
