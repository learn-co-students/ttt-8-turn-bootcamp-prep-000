board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board = board)
  if(board != nil && board.any?)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
end

def input_to_index(input_to_index)
  input_to_index = input_to_index.to_i - 1
  return input_to_index
end

def move(board, index, value = "X")
  if(index > -1 && index < 9)
    board[index] = value;
  end
  return board
end

def valid_move?(board, index)
  if index < board.size && index > -1
    return false if position_taken?(board, index)
  else
    return false
  end
  true
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  end
  false
end

def turn(board)
  isValid = false
  while isValid == false
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    isValid = valid_move?(board, index)
    if isValid
      move(board, index)
      display_board(board)
    end
  end
end
