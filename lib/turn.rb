#board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
puts" #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
    if board[index]==" " || board[index]==""||board[index]==nil
      false
      elsif board[index]=="X" || board[index]=="O"
      true
    end
end

def valid_move?(board,index)
 if index.between?(0,8)
    if index.between?(0,8) && position_taken?(board,index)
    false
    else
    true
    end
  else false
 end
end

def input_to_index(user_input)
  index= user_input.to_i - 1
end

def move(board,index,value="X")
  board[index]=value
end

def turn(board)
  counter=0
  puts "Please enter 1-9:"
  user_input=gets.strip
  index=input_to_index(user_input)
  while counter<1 #try counter<9
        if valid_move?(board,index)
          move(board,index,value="X")
          display_board(board)
          counter=counter+1

      else puts "Please enter 1-9:"
           user_input=gets.strip
           index=input_to_index(user_input)
      end
  end
end
#puts "Please enter 1-9:"
#user_input=gets.to_i
#puts "u enter #{input}"
