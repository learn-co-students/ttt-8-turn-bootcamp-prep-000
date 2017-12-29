def display_board(board) 
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
 if user_input == user_input.to_i.to_s
   user_input = user_input.to_i
  return user_input - 1
else -1 
  end
end

def valid_move?(board, index)
if index == -1 
  false 
elsif board[index] == "X" || board[index] == "O"
  false
elsif board[index] == " " || board[index] == "" 
  true
elsif board[index] == nil
  false
 end 
end

def move(board, index, player)
  board[index] = player 
end

def turn(board)
  puts "Please enter 1-9:"
  display_board(board)
  user_input = gets.strip 
  index = input_to_index(user_input)
  invalid = valid_move?(board, index)
  if invalid == false 
    puts "That's an invalid move" 
    turn(board)
  elsif invalid == true 
    move(board, index, "X" )  
    display_board(board)
  end 
end