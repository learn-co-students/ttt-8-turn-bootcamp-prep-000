<<<<<<< HEAD
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def turn(board)
  puts "Please enter 1-9:"
  your_move = gets.strip
  index = input_to_index(your_move)
  valid_move?(board,index) == false ? turn(board) : move(board,index)
  display_board(board)
end

def input_to_index(your_move)
  your_move = your_move.to_i - 1
  your_move
end

def move(board,index,player="X")
  board[index]=player
end

def position_taken?(board,index)
  return board[index]== "" || board[index] ==" " || board[index] == nil ? false: true
end

def valid_move?(board,index)
  return index >= 0 && index <= 8 && board[index] != "X" && board[index] != "O" && position_taken?(board,index)== false ? true : false
=======
def turn(board)
  
end

def move(board,index,pip)

end

def display_board(board)

end

def position_taken?(board,index)

end

def valid_move?(board,index)

>>>>>>> db5f9e11c68484d0dc72b06525ca282d8b23f0ea
end
