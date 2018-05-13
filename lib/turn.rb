def display_board(board)
ttt =" #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
puts ttt
end

def valid_move?(board, index)
	index1 = index.to_i
	def position_taken?(board, index1)
if board[index1] == "X" || board[index1] == "O"
  return true
else
  return false
end
end
	 position = index1 + 1
  if !position_taken?(board, index1) && position.between?(1, 9)
    return true
  else
    return false
  end
  end
   def input_to_index(input)
    input = input.to_i
    index = input - 1 
    return index
  end
  def move(board, index, chrt="X")
 
    return board[index] = chrt
  end
def turn(board)
puts "Please enter 1-9:"
numb = gets.strip
numb2 = input_to_index(numb)

if valid_move?(board, numb2) == false
  puts "invalid move"
  turn(board)
end
  move(board, numb2, chrt="X")
  
   display_board(board)
end