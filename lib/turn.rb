#to display board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#to change input to index

def input_to_index(input)
  index = input.to_i - 1
end

#to check if position is taken

def position_taken?(board, index)
taken = nil;
  
  if board[index] ==  " " || board[index] == "" || board[index] == nil  
  taken = false;
  else
  taken = true;
  end
  
taken
end

#to check if input is valid

def valid_move?(board,index)
  valid = nil;
  
  if index.between?(0,8) == true && position_taken?(board,index) == false
  valid = true;
   else 
  valid = false;
  
  end
  valid
end 

#to make the move
def move(board,index,character = "X")
  board[index] = character
  board
end  

#to greet and make turns

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

if valid_move?(board,index) == true
  move(board,index);
  display_board(board);
  else 
  turn(board);
  end
end
