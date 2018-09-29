def turn(board)
  #get user input
  puts "Please enter 1-9:"
  input = gets.strip
  #convert input to index using helper method
  index = input_to_index(input)
  #if index is valid make the move with input using helper methods
  if valid_move?(board,index) == true
    move(board,index,value="X")
    display_board(board)
  #else prompt user to enter input again until correct / rinse & repeat
 else
    puts "Please enter 1-9:"
    input = gets.strip 
 end 
end

# helper method: #valid_move? 
def valid_move?(board,index)
  if (0..8).include?(index) && position_taken?(board,index) == false
    true
  else
    false 
  end
end 

# helper method: #position_taken? 
def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false 
  else
    true 
  end 
end 

# helper method: #move 
def move(board,index,value="X")
  board[index] = value 
end 

# helper method: #input_to_index
def input_to_index(input)
  if (0..10).include? input.to_i
    input.to_i - 1
  else
    -1
  end
end 
  
# helper method: #display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 