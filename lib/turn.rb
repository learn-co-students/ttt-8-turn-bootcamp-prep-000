def display_board(board)
  sep = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts sep
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts sep
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  return num.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    true
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end 

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  num = input_to_index(num)
  if valid_move?(board, num)
    move(board, num)
    display_board(board)
  else
    turn(board)
  end
end
  
  
  
  
  
  