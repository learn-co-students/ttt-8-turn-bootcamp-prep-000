
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  
  if  position_taken?(board,index)
  
    return nil
    
   elsif index.between?(0,8)
   
    return !position_taken?(board,index)
    
  end
end

def position_taken?(board,index)
  
  if board[index] == " " || board[index] == nil || board[index] == ""
    return FALSE
    
  elsif board[index] == "X" || board[index] == "O"
    return TRUE
    
  end
end

def input_to_index(input)
  
  return input.to_i - 1
  
end

def move(array,index,value = "X")
   array[index] = value
   return array
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
  if valid_move?(board,index)
    move(board,index,value = "X")
  else
    turn(board)
  end
  return display_board(board)
  
end