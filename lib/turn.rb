def display_board(board)

  puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts("-----------")
  puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts("-----------")
  puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index=input_to_index(input)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
   turn(board)
  end
end


def move(board,index,name="X")
     board[index]= name
end


def input_to_index(user_input)
   userinput=user_input.to_i
   userinput= userinput-1

end

# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board, index)
      false
    elsif index > board.length() || index < 0
     false
    else
     true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken? (board, index)
   if index == " "
     false
   elsif index == ""
     false
   elsif index == nil
     false
   elsif board[index] == "X" || board[index] == "O"
    true
   end
end
