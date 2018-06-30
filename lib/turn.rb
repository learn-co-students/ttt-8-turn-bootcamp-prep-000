board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]
index = 0

def display_board(board)
  return board
end

def valid_move?(board, index)
  if index > 0
    index-1
  end
    if index > 8
      false
    elsif position_taken?(board, index)
      false
    else
      true
    end
end

