def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input) #user_input is a placeholder for data coming in through the method call (method call being using this method)
  return user_input.to_i - 1
end

def valid_move?(board, index)
  # if the index is between 0 and 8 and the position is not taken, return true
  if index.between?(0, 8) && !position_taken?(board,index)
    return true
    # otherwise return false
  else
    return false
  end
end

def position_taken?(board, index)

if board[index] == "" || board[index] == " " || board[index] == nil
  return false
elsif board[index] == "X" || board[index] == "O"
  return true

 end
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)

  puts "Please enter 1-9:"
  input = gets.strip # will return a string
  index = input_to_index(input) # input is the data being passed to user_input
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "Invalid move"
    display_board(board)
    turn(board)
  end

end
