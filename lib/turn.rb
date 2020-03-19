def display_board(board)
  separator = "|"
  lines = "-----------"
  puts " #{board[0]} #{separator} #{board[1]} #{separator} #{board[2]} "
  puts lines 
  puts " #{board[3]} #{separator} #{board[4]} #{separator} #{board[5]} "
  puts lines 
  puts " #{board[6]} #{separator} #{board[7]} #{separator} #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil  
    return false
  else 
    return true
  end
end 

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
      return true 
  end 
end 

#code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1 
end 

def move(board, index, current_player = "X")
  board[index] = current_player
end 

def turn(board) 
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else 
    turn(board)
  end 
end 
