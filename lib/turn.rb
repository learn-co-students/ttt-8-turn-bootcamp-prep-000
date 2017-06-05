def turn(board)
  puts "Please enter 1-9:"
  turn=gets.strip
  x=input_to_index(turn)
  if (!valid_move?(board,x))
    turn(board)
  else
    move(board,x)
  end
  display_board(board)
end

def display_board(brd) #displays board
  puts " #{brd[0]} | #{brd[1]} | #{brd[2]} "
  puts "-----------"
  puts " #{brd[3]} | #{brd[4]} | #{brd[5]} "
  puts "-----------"
  puts " #{brd[6]} | #{brd[7]} | #{brd[8]} "
end

def input_to_index(x)
  x.to_i-1
end

def valid_move?(arr,ind)
  if(position_taken?(arr,ind))
    false
  elsif(ind<=8 && ind>=0)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(arr, ind)
  if(arr[ind]=="X"||arr[ind]=="O")
    true
  else
    false
  end
end

def move(arr,ind,ply="X")
  arr[ind]=ply
end
