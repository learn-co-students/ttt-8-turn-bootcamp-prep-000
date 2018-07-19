def display_board(the_board)
  puts " #{the_board[0]} | #{the_board[1]} | #{the_board[2]} "
  puts "-----------"
  puts " #{the_board[3]} | #{the_board[4]} | #{the_board[5]} "
  puts "-----------"
  puts " #{the_board[6]} | #{the_board[7]} | #{the_board[8]} "
end


def input_to_index(input)
  input.to_i - 1 
end


def move(array,index,character = "X")
  array[index] = character
end 


def position_taken?(board, index)

  taken = nil
   if (board[index] ==  " " || board[index] == "" || board[index] == nil)
     taken = false
   else
     taken = true
  end
end


def valid_move?(board,index)
  if position_taken?(board,index) || !(index.between?(0,8))
    false
  else
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  number = input_to_index(number)
  if valid_move?(board,number)
    move(board,number)
    display_board(board)
  else
    turn(board)
  end 
end