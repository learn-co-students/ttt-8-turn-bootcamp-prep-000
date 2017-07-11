def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

def input_to_index(index)
  position = index.to_i - 1
end

def valid_move?(board, index)
  if !index.between?(0,8)
    false
  else position_taken?(board, index)
  end
end


def position_taken?(board, index)
  if board[index] === "" || board[index] === " " || board[index] === nil
    true
  elsif board[index] === "X" || board[index] === " X " || board[index] === "O" || board[index] === " O " || board[index] === "x" || board[index] === " x " || board[index] === "o" || board[index] === " o "
    false
  end
end

def move(board, index, turn = "X")
  board[index] = turn
end
