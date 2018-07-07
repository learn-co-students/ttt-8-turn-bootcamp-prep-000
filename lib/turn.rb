def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(x)
  index = x.to_i 
  index - 1 
end 

def valid_move?(board, index)
 index.between?(0,8) && !position_taken?(board, index)
end  

 def position_taken?(board, index)
  !(board[index] == "" || board[index] == " " || board[index] == nil)
 end 
  
def move(board, index, player="X")
  board[index] = player
end  

def turn(board)
  puts "Please enter 1-9:"
  x = gets.strip
  index = input_to_index(x)
  if valid_move?(board, index)
    move(board, index, player="X")
  else
    turn(board)
  end
  display_board(board)
end  