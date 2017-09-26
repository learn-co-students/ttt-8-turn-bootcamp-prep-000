def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i-1
end

def move(board,index,value="X")
  board[index]=value
end

def valid_move?(board, index)

   if board.length==0 || index<0 || board[index]==nil
     return false
   elsif (index>=0 && index<9)
        if  board[index]=="X" || board[index]=="O"
            return false
        elsif board[index]==" " || board[index]==""
            return true
        else return false
        end
   else
     return false
   end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, number)
  index=number.to_i
  if valid_move?(board,index)
     return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
while !valid_move?(board,index)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
end
    move(board,index)
    display_board(board)
end
