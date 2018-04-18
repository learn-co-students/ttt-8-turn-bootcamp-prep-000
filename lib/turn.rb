def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(string)
 index = string.to_i - 1 
 return index
end 

def valid_move?(board, index)
  if position_taken?(board, index)
    true
  elsif position_taken?(board, index) == nil
    false
  else
    false
  end   
end 

 
def position_taken?(board, index)
  if board[index]==" " || board[index]=="" #|| board[index]==nil
     false  
  elsif  board[index]==nil
     nil
  elsif  board[index]=="X" || board[index]=="O"
     true
  else 
     true
  end 
end   

def move(board,index,value="X")
  board[index]=value
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
  if index.between?(1, 9)
    return index
    valid_move?(board, index)
  else
    puts "It is an invalid number.Please enter 1-9:"
  end   
end

  