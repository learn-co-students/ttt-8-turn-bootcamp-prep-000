def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  cells = []
  rows = []
  separater = "-----------" + "\n"
  board.length.times do |i|
    cells[i] = " #{board[i]} "
  end
  for i in 0..2
    rows[i] = "#{cells[3*i]}" + "|" + "#{cells[3*i + 1]}" + "|" + "#{cells[3*i + 2]}" + "\n"
  end
  print rows[0], separater, rows[1], separater, rows[2]
end

def valid_move?(board, index)
  if index.between?(0,8) && (!position_taken?(board, index))
    return TRUE
  else
    return FALSE
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" or board[index] == "O"
    return true
  end
end

# code your input_to_index and move method here!
def input_to_index(input)
  index = input.to_i - 1
  return index
end

def move(board, index, character = "X")
  board[index] = character
  return board
end