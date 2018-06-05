def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
index = user_input.to_i
index = index - 1
end

def move(board, index, character="X")
  board[index] = character
end
  
  def valid_move?(board, index)
   !(position_taken?(board, index)) && index <10 && index >= 0
end


def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
 elsif board[index] == " " || "" || nil
   return false
end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  my_index = input_to_index(user_input)
  if valid_move?(board, my_index) == true
    move(board, my_index)
    display_board(board)
  else 
    puts "Invalid input"
    turn(board)
  end
end