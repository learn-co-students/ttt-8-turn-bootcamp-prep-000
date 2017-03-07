def display_board(board)
  row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  row2 = "-----------"
  row3 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row4 = "-----------"
  row5 = " #{board[6]} | #{board[7]} | #{board[8]} "
  puts row1
  puts row2
  puts row3
  puts row4
  puts row5
 end


 def valid_move?(board, index)
   if board[index] == " " && index.between?(0,8)
     return true
   end
 end

 def position_taken?(board, index)
   if board[index] == " "
     false
   elsif board[index] == ""
     false
   elsif board[index] == nil
     false
   elsif board[index] == "X" || board[index] == "O"
     true
   end
 end

 def input_to_index(input)
   input.to_i - 1
 end

 def move(array, index, value = "X")
   array[index] = value
 end

 def turn(board)
   puts "Please enter 1-9:"
   input = gets.strip
   index = input_to_index(input)
   if valid_move?(board, index)
     move(board, index)
   else
     turn(board)
   end
   display_board(board)
 end
