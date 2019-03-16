def display_board(board)
    return board
end

 def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

 def move(board,input,player_character="X")
  board[input.to_i] = player_character
end

 def input_to_index(number)
  number.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && (index).between?(0, 8) == true
    return true
  else false
  end
end

 def position_taken?(board, index)
     if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
       return false
     else
       return true   #board[index] is not " " or "" or nil because there's an "X" or "O"
     end
end

 def turn(board)
  puts "Please enter 1-9:"
  #get the user input
  user_input = gets.strip
  # input to index
  index = input_to_index(user_input)
  if valid_move?(board, index)
   move(board,index,value="X")
   display_board(board)
  else
   puts "Oops, invalid move! Please try again."
   turn(board)
  end
end
