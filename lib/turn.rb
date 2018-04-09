def turn(board)
puts "Please enter 1-9:"
input = gets.chomp
index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index,character = "X")
    display_board(board)
    
  else
   
    turn(board)
  end
end

def input_to_index(input)
  index = input.to_i - 1 
  index
end
def valid_move?(board,index)
if index.between?(0,8)  && !position_taken?(board,index)
true
end

end

def position_taken?(board,index)
if board[index] == " " || board[index] == "" || board[index] == nil
  false 

elsif board[index] == "X" || board[index] == "O"
true
end
    
end
def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} 
-----------
 #{board[3]} | #{board[4]} | #{board[5]} 
-----------
 #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board,index,character = "X")
board[index] = character
board

end