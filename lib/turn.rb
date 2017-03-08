def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} \n"
end
#board = [" "," "," "," "," "," "," "," "," "]

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input = user_input - 1
end

def valid_move?(board,index)
if position_taken?(board,index) == true
  return false
elsif index.between?(0,8)
  return true
end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board,index)
  if board[index] == "X" || board[index] == "O"
   return  true
  elsif board[index] == "" || board[index] == nil
    return false
  elsif board[index] == " "
    return false
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == true
     move(board, index, value = "X")
     display_board(board)
  else
      turn(board)
end
end
