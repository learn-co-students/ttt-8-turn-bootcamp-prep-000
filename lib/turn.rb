def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} 
-----------
 #{board[3]} | #{board[4]} | #{board[5]} 
-----------
 #{board[6]} | #{board[7]} | #{board[8]} "
  
end

def input_to_index(index)
  index = index.to_i - 1
end 

def valid_move?(board, index)
 if   index.between?(0,8) && (board[index] == " " || board[index] == "")
 return true 
 else 
 return false
 end
end 

def move(board, index, char = "X") 
  board[index.to_i] = char
end


def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  until valid_move?(board,index) == true
  puts"Not a valid move. Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  end
  move(board,index)
  display_board(board)

end