def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} ----------- #{board[3]} | #{board[4]} | #{board[5]} ----------- #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (board[index] == ' ' || board[index] == nil || board[index] == '') && (index < 9 && index >= 0) 
    true
  else
   false
 end
end

def move(board, index, token = 'X')
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    "puts invalid"
    turn(board)
  end
  
end

def input_to_index(index)
  index.to_i - 1
end