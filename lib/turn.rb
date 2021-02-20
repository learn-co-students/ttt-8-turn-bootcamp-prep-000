#Asking the user for their move by position 1 - 9
    #puts "Please input a number between 1 and 9."
#Receive User Input
    #user_input = gets.chomp
#convert position to index
    #integertoindex
#IF move is valid, make them ove and display the board to the user.
    #move_valid = true
#If move is invalid, ask for a new move.
    #puts "Please enter a number between 1 and 9"
#Helper Methods
#Board Array
#Displays board
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
#converts user input to index number
  def input_to_index(user_input)
    index = user_input.to_i - 1
  end
  #move method
  def move(array,index,value="X")
    array[index] = value
  end
  #checks if position is already taken
  def position_taken?(board, index)
    taken = nil
    if (board[index] == " " || board[index] == "" || board[index] == nil)
        taken = false
    elsif (board[index] == "X" || board[index] == "O")
        taken = true
    end
end

def valid_move?(board, index)
    if (position_taken?(board, index) != true && index.between?(0,8) == true)
     true
    elsif (position_taken?(board,index) == true || index.between?(0,8) != true)
     false 
     end 
 end

 def turn(board)
    puts "Please enter 1-9:"
        user_input = gets.chomp
            index = input_to_index(user_input)
                if (valid_move?(board, index) == true)
                move(board,index,value = "X")
                display_board(board)
                else 
                turn(board)
            end
end