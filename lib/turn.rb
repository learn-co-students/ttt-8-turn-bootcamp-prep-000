def display_board(board)
  puts " #{board[0]} "+"|"+" #{board[1]} "+"|"+" #{board[2]} "
  puts "-----------"
  puts " #{board[3]} "+"|"+" #{board[4]} "+"|"+" #{board[5]} "
  puts "-----------"
  puts " #{board[6]} "+"|"+" #{board[7]} "+"|"+" #{board[8]} "
end

def position_taken?(board,index)
  if board[index]=="" || board[index]==" " || board[index]==nil 
    false
  elsif board[index]=="X" || board[index]=="O"
    true
  end
end 

def input_to_index(input_position)
index = input_position.to_i - 1 
end 

def move(board, index, token = "X")
      board[index]=token
end 

def valid_move?(board,index)
  if index>=0 && index<=8 && position_taken?(board,index) == false 
    true 
  else
    false  
  end  
end

def turn(board)
  puts "Please enter 1-9:"
  input_position = gets.strip
  index = input_to_index(input_position)
  if valid_move?(board,index)==true
    move(board, index,"X") 
    display_board(board)
  else
    until valid_move?(board,index)==true 
    turn(board)
    break
    end
  end  
  
 
end 
  
  
  
  
  
  
  