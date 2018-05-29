def display_board(arr)
  puts  " #{arr[0]} | #{arr[1]} | #{arr[2]} "
  puts "-----------"
  puts  " #{arr[3]} | #{arr[4]} | #{arr[5]} "
  puts "-----------"
  puts  " #{arr[6]} | #{arr[7]} | #{arr[8]} "
end

def valid_move?(board, index)
   if index.between?(0, 8)
     position_taken?(board, index)
   end
 end
 
 def position_taken?(board, index)

   (board[index] ==  " " || board[index] == "" || board[index] == nil) ?
     true : false
 
 end
 
def input_to_index(input)
  input.to_i - 1
end


def move(board, index, value = "X")
  if valid_move?(board, index)
    board[index] = value
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if move(board, input)
    display_board(board)
  else
    turn(board)
 end
end



  