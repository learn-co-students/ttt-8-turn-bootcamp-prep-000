def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

 def valid_move?(board,index)
  if !position_taken?(board,index) && index.between?(0,8)
    true
  end
end

 def position_taken?(board, index)
   if board[index] == " " || board[index] == "" || board[index] == nil
    false
 elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def move(board,index,user_input = "X")
  board[index] = user_input
 end

 def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  input = input_to_index(input)
 if valid_move?(board,input) == true
    move(board,input)
    display_board(board)
  else
    turn(board)
  end
end 
