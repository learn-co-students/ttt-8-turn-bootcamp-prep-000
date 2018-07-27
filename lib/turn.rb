board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
	row_one=" #{board[0]} | #{board[1]} | #{board[2]} "
	row_two="-----------"
	row_three=" #{board[3]} | #{board[4]} | #{board[5]} "
	row_four="-----------"
	row_five=" #{board[6]} | #{board[7]} | #{board[8]} "
	puts row_one
	puts row_two
	puts row_three
	puts row_four
	puts row_five
end

 def input_to_index(number)
    index=number.to_i-1
    return index
end

def valid_move?(a,ind)
  if (ind.between?(0,8) && a[ind]==" ")
    TRUE
  elsif !(ind.between?(0,8))
    FALSE
  elsif (a[ind]=="X" || a[ind]=="O")
    FALSE
  end
end

def move(array,location,letter="X")
   array[location]=letter
   return display_board(array)
end 

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  god=input_to_index(input)
  if valid_move?(board,god)
    move(board,god)
    display_board(board)
  else
    turn(board)
  end
end