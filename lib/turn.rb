def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  index = board[position]
  if position.between?(0, 8) && position_taken?(index) == false
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(index)
  if index == "" || index == " " || index == nil
    false
  else
    true
  end
end 

def move(board,index,value="X") 
  board[index] = value
end

def input_to_index(input)
  index = input.to_i-1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true 
    move(board,index,value="X")
    display_board(board)
  else
     turn(board)
  end
     
  end
