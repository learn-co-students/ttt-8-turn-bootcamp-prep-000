def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(input)
  user_input = input.to_i
  user_input-1
end

def move(array, position, value="X")
  array[position]=value
end


def valid_move?(board, index)
  if((index >=0 && index <=8) && !position_taken?(board, index))
    true
  else
    nil
  end
end


def turn(board)
puts "Please enter 1-9:"
input  = gets.strip
index = input_to_index(input)
if(valid_move?(board, index))
  move(board, index)
  display_board(board)
else
  turn(board)
end
end

def position_taken?(board, index)
  if(board[index]=="")
    false
  elsif(board[index]==" ")
    false
 elsif(board[index]==nil)
  false
 elsif(board[index]="X" || board[index]=="O")
  true
end
end
