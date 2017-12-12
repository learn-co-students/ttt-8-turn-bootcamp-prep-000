def valid_move?(board,index)
  if ((index >=0 && index <=8)&& (board[index]=="" || board[index]=="" || board[index]==" " || board[index]==nil))
    return true
  else return false
  end

end
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
index = 45

def turn(board)

  while  true
   puts "Please enter 1-9:"
   index=input_to_index(gets)
    if valid_move?(board,index)
       move(board, index, value="X")
       display_board(board)
       return
    end
  end

end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(user_input)
  index=user_input.to_i - 1
  return index
end
def move(array,index,value="X")
  array[index] = value
end
