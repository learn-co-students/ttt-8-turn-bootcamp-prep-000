def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} ", 
       "-----------",
       " #{board[3]} | #{board[4]} | #{board[5]} ", 
       "-----------",
       " #{board[6]} | #{board[7]} | #{board[8]} " 
end  

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
end

def move(board, converted_input, character = "X")
  board[converted_input] = character
  puts board
end

def valid_move?(board, index)
    
  if position_taken?(board,index) == false && index >= 0 && index < 9
    true
  
  end  
end 

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" or board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end  
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  converted_input = input_to_index(user_input)
 
  if valid_move?(board, converted_input) != true
    turn(board)
  else
    move(board, converted_input, character = "X")
    display_board(board)
  end  
end  