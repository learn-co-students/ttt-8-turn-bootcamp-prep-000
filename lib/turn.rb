board = ["   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#
 def input_to_index(user_input)
   user_input.to_i - 1
 end

 def valid_move?(board, index)
   if((index + 1).between?(1, 9)) && (position_taken?(board, index) != true)
    true
   else
     false
   end
 end

 def position_taken?(board, index)
   if((board[index] == "O") || (board[index] == "X"))
     true
   else
     false
   end
 end

 def move(board, index, char = 'X')
   board[index] = char
 end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  new_input = input_to_index(input)
  if(valid_move?(board, new_input))
    move(board, new_input)
    display_board(board)
  else
    turn(input)
  end
end

def move(board, index, char = 'X')
  board[index] = char
end