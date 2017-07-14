def input_to_index(space)
  space.to_i-1
end
def move(board,index,character= 'X')
  board[index] = character
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board,index)
end

def position_taken?(board, index)
   taken = nil
     if (board[index] ==  " " || board[index] == "" || board[index] == nil)
       taken = false
     else
       taken = true
     end
  taken
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end

end
