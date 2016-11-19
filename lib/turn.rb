def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  position = user_input.to_i
  index = position - 1
  return index
end

def move(board,index,char="X")
  board[index]=char
  return board
end


def valid_move?(board, index)
  if  !position_taken?(board,index) && index.between?(0,8)
    true
  else
    false
end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if (board[index]=="") || (board[index]==" " || board[index]==nil)
    false
  elsif (board[index]=="X"|| board[index]=="O")
    true
end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  index = input_to_index(position)
  if index.between?(0,8) && valid_move?(board,index)
    board[index]="X"
  else
    if !valid_move?(board,index)
      puts "That space is taken"
    turn(board)
  end
  end
  display_board(board)
end
