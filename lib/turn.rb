
board = [" "," "," "," "," "," "," "," "," "] 
 
 def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end 

def valid_move?(board, index)
 if 
   index.between?(0, 7) && 
   position_taken?(board, index) == FALSE
   return TRUE
 else 
   return FALSE 
end
end

def position_taken?(board, index)
if 
  board[index] == " "|| board[index] == "" || board[index] == nil 
  return FALSE 
else
  board[index] == "X" || board[index] == "O"
  return TRUE
end 
end

def move(board, user_input, value = "X")
 board[user_input] = value 
 end
 
 def turn(board)
  puts "Please enter 1-9:"
    user_input = gets.to_i-1  
    input_to_index(user_input)
    index = user_input 
  if valid_move?(board, index) 
   move(board, user_input, value = "X") 
  display_board(board)
else while valid_move?(board, index) != TRUE 
   puts "Please enter 1-9:"
    user_input = gets.to_i-1  
    input_to_index(user_input)
    index = user_input 
  until valid_move?(board, index) 
   move(board, user_input, value = "X") 
  display_board(board) 
end
end
end
end