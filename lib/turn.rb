def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,position)
  if board[position] == "X" || board [position] == "O"
    return false
  elsif board[position] == "x" || board [position] == "o"
    return false
  else
    return true
  end

end

def valid_move?(board,index)
  if index < 8 && index >= 0
    position_taken?(board,index)
  else
    return false
  end
end

def move(board,position,character="X")
  board[position] = character
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input = user_input -= 1
  return user_input 
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_input = input_to_index(user_input)
  if valid_move?(board,user_input)
    move(board,user_input,character="X")
  else
    "Please submit another input"
    turn(board)
    
  end
display_board(board)  
end