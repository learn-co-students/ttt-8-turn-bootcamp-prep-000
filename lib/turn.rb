def valid_move?(board, index)
  
 if index < 0 || index > 8 ||  position_taken?(board, index) || index == nil
   return false
    
  else
    return true
 end
  
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  
  if board[index] == " " || board[index] == ""  || board[index] == nil
    return false
 
  elsif board[index] == "X" || board[index]  == "O"
    return true
  
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
 x = user_input.to_i
 y = x-1
end  

def move(board, input_to_index, fill ="X")
  
 board[input_to_index] = fill
 return board
#position=fill
#board[4]="O" 
end

def turn(board)
  
  puts "Please enter 1-9:"
  input = gets.strip
  
  input = input_to_index(input)
  
  if valid_move?(board, input) == true
    move(board, input, fill ="X")
    display_board(board)
  else
    puts "Please enter 1-9:"
    input = gets.strip
  end
end

