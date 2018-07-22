def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (board[index] == " " || board[index] == NIL || board[index] == "") && index.between?(0, 8)
    return TRUE
  else
    return FALSE
  end
end

def input_to_index(user_input = 0)
  return user_input.to_i - 1
end 

def move(board, index, character = 'X')
  return board[index] = character
end
  
def turn(board)
  puts "Please enter 1-9:"
  user_input =  gets.chomp
  index = input_to_index (user_input)
  if valid_move?(board, index)
    move(board, index)
  else 
    turn(board)
  end 
  display_board(board)
  
end 