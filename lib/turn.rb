def turn(board)
  puts "Please enter 1-9:"
  ind = gets.strip
  ind2 = input_to_index(ind)
  if valid_move?(board,ind2) == true
    #move
    move(board,ind2,"X")
    display_board(board)
  else
    turn(board)
  end

end




def position_taken?(bor,indx)
if bor[indx] == " " || bor[indx] == "" || bor[indx] == nil
  false
else
  true
end
end


def valid_move?(bor,indx)
#valid if present on game board and not already
#filled with a token
if(indx >= 0 && indx <= 8 && position_taken?(bor,indx) == false)
  true
else
  false
end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(indx)
  #if indx.is_a? Integer
  ret = indx.to_i - 1
  return ret
end

def move(board, mo, val = "X")
  board[mo] = val
end
