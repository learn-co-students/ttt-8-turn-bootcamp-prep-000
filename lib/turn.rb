#displays board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

#convert user input to an integer 
def input_to_index(user_input)
  user_input.to_i - 1 
end 

#checks if move is valid 
def valid_move?(board, indx)
  if position_taken?(board, indx)
    false 
  elsif (indx < 0 || indx > 8)
    false
  else 
    true 
  end 
end 

#checks if position is occupied 
def position_taken?(board, indx)
  if (board[indx] == "X" || board[indx] == "O")
    true 
  elsif (board[indx] == "   " || board[indx] == " " || board[indx] == "")
    false 
  elsif (board[indx] == nil)
    false
  end 
end  

# sets the correct index vlaue of the position
def move(board, user_input, charac = "X")
    board[user_input] = charac 
end

#each turn prompts
def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  input_index = input_to_index(input)
  
  if valid_move?(board, input_index) 
    move(board, input_index)
    display_board(board)
  else 
    turn(board)
  end
end 

