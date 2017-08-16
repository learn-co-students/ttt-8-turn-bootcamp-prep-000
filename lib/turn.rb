def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(index)
  index = index.strip
  index = index.to_i - 1
  return index
end

def move(board, index, value="X")
  board[index] = value
  return board
end
def position_taken?(board, index)
  if board[index] == "" || board[index] ==" " || board[index] == nil
    false
  else true
  end
end
def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == false
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  turn = gets
  index = input_to_index(turn)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end

end
