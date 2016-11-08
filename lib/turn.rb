def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board,index)
    return true if board[index]==" " && index < board.length && index >=0
    return false
end

def input_to_index(num)
  return   (num.to_i)-1
end

def move(board,idx,x="X")
  board[idx]= x
  display_board(board)

end


def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp.to_i
  idx = input_to_index(num)

  if valid_move?(board,idx)
     move(board,idx,x="X")
   else
     turn(board)
   end
end
