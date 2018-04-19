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
  if index.between?(0,8) && !position_taken?(board, index)
      puts 'this is a valid move'
    return true
  else
   return false
  end
end

 
def position_taken?(board, index)
  if board[index]==" " || board[index]=="" || board[index]==nil
     false  
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
  if valid_move?(board, index)
     move(board, index, value="X")
     display_board(board)
  else
    puts "It is an invalid move. Try again."
    turn(board)
  end   
end

  