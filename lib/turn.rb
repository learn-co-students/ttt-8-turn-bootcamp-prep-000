def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_as_index = input_to_index(input)
  if ! valid_move?(board, input_as_index) 
    turn(board)
  else
    move(board, input_as_index)
    display_board(board)
  end  
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# 
def input_to_index(user_input)
  if user_input.is_a?Array
    user_input_int = user_input.join.to_i
  else
    user_input_int = user_input.to_i
  end  
  return -1 if (user_input_int <= 0 || user_input_int > 9 || user_input.length > 1)
  return (user_input_int - 1)
end 

def move(board, position, player = "X")
  
  board[position] = player
  
  return board
end

# code your #valid_move? method here
def valid_move?(board, index)
  if (index.between?(0, 8) && !position_taken?(board, index))
    return true
  else
    return false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""  || board[index] == nil 
    return false
  else
    return true
  end  
end  
