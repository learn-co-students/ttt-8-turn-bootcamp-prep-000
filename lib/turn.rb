 board = ["", "", "", "", "", "", "", "", ""]


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "    
end  




def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return true 
  end
end   







def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
     return false 
  else
     return true 
  end 
end  




def input_to_index(user_input)
  user_input.to_i - 1
end  
def move(board, index, player = "X") 
  board[index] = player 
end  


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) 
    move(board, index, player = "X")
  else
    puts "Please enter 1-9:"
   user_input = gets.strip
   index = input_to_index(user_input)
    

  end   
  display_board(board)
end   