def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index=input.to_i-1
end

def valid_move?(board,index)
  if index.between?(0,8) == true && board[index] == " " || board[index] == ""
    return true
  else
    return false
  end
end

# Optional:  Define position_taken here 

def move(board,index,token="X")
  board[index]=token
end

def turn(board)
  puts "Please enter 1-9:"
  
  input = gets.chomp
  
  index = input_to_index(input)
  if valid_move?(board,index) == false
    turn(board)
  end
  
  move(board,index,"X")
  
  display_board(board)
  
end



