board = [" "," "," "," "," "," "," "," "," "]
#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "


     end

#input_to_index
def input_to_index(number)

  (number.to_i)-1
end

def move(board,index,character="X")
  board[index]= character
end

#position_taken
def position_taken?(board,index)
if board[index] == " "||board[index]==""||board[index]==nil
  false
else
  true
end
end
#-------------------------------------
#valid_move
def valid_move?(board,index)
!position_taken?(board,index)&&index.between?(0,8)

end
#----------------------------------------------------------
#turn

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if valid_move?(board,index) ==false
    turn(board)
  else
    move(board,index)
    display_board(board)
  end
end
