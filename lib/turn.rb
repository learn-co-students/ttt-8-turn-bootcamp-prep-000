def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, i)
  # check if position is taken or if it is 'out-of-bounds' ...
  if (position_taken?(board, i) == true) || (i > 8) || (i < 0)
    return false
  else 
    return true
  end  
end 

  def input_to_index(input)
  input = input.to_i
  index = input - 1
  print "Returning: "
  puts index
  return index
end  

def update_array_at_with(board, index, value)
  index = index.to_i
  board[index] = value
  
  puts " "
  print "Index: "
  puts index
  print "BOARD Value: "  
  puts  board[index]

  return board
end

def move(board, index, value = "X")
  index = index.to_i
  new_board = update_array_at_with(board, index, value)
  display_board(new_board)
end

def position_taken?(board, i)
  if board.length != 0 
    puts board[i]
  end
  if board.length == 0 
    puts "ZERO LENGTH"
    return false
  elsif (board[i] == "X") || (board[i] == "O")
    puts "true"
    return true
  else
    puts false
    return false
  end  
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, value = "X")
  else
    turn(board)
  end  
end  
  

  


