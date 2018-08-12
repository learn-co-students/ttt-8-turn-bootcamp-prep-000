# display board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# convert user input to index
def input_to_index(input)
  index = input.to_i
  index - 1
end

# move
def move(board,input,x="X")
  board[input] = x
end

# position_taken
def position_taken?(board,index)
  if board[index] == " " ||
    board[index] ==  "" || 
    board[index] == nil
   return false 
  else
   return true
end
end

# valid_move?
def valid_move?(board,index)
    if position_taken?(board, index) == false && 
      index.between?(0, 8) == true 
     return true
   else 
    false
 end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  user_input = input_to_index(input)
  
  if valid_move?(board, user_input) == false
    turn(board)
  else
    move(board,user_input,x="X")
  end
  display_board(board)
end
  

