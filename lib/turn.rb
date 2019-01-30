def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  new_user_input = user_input.to_i
  new_user_input -= 1
  return new_user_input
end

def valid_move?(board,index)
  if(board[index]!="X" && board[index]!="O" && index>=0 && index<=8)
    return true
  else 
    return false
  end
end

def move(board,index,token="X")
  board[index]=token
end
 def turn(board)
   answer=false
   until answer==true
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
  answer=valid_move?(board,index)
end
  move(board,index,token="X")
  display_board(board)
end 
  