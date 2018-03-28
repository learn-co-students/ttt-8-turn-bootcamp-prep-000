def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#will move the board piece
def input_to_index(input)
  position = input.to_i - 1
end

def move(board, position, letter="X")
  board[position] = letter
end

def position_taken?(board,index)
 board[index] == "X" || board[index] ==  "O"
end

def valid_move? (board, index)
  return index <= 8  && index >= 0 &&  !position_taken?(board, index)
end



def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board, index)
    display_board(board)
  else
     turn(board)
  end

end
