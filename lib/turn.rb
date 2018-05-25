#DISPLAY board
#-------------

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#INPUT TO INDEX
#--------------

def input_to_index(input)
  input.to_i - 1
end

#POSITION TAKEN 
#---------------

def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "")|| (board[index] == nil)
    return false
  else
    return true
  end
end


#VALID MOVE 
#----------

def valid_move?(board, index)
  
  if (position_taken?(board, index) == false) && (index.between?(0, 8) == false)
    return false
    
    elsif (position_taken?(board, index) == true)
    return false
    
    else
    return true
  end
end

#MOVE
#------

def move(board, index, token = "X")
  board[index] = token
end

#TURN 
#------

def turn(board)
  puts "Please enter 1-9:"
  u_input = gets.strip
  u_index = input_to_index(u_input)
    if valid_move?(board, u_index)
    move(board, u_index)
    display_board(board)
  else
    turn(board)
    
  end
end