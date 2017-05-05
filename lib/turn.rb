# take a turn

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, character="X")
  else
    turn(board)
  end
  display_board(board)
end

# display board

def display_board(board)

  row1 = [ " #{board[0]} ", " #{board[1]} ", " #{board[2]} " ]
  row2 = [ " #{board[3]} ", " #{board[4]} ", " #{board[5]} " ]
  row3 = [ " #{board[6]} ", " #{board[7]} ", " #{board[8]} " ]

  puts row1 * "|"
  puts "-----------"
  puts row2 * "|"
  puts "-----------"
  puts row3 * "|"

end

# convert input to index

def input_to_index(input)
  input.to_i - 1
end

# check if the move is valid

def valid_move?(board, index)

  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  end

  if position_taken?(board, index)
    return nil
  end

end

# check if the cell is empty

def position_taken?(board, index)

  if board[index] == "  " || board[index] == " " ||
     board[index] == "" || board[index] == nil
    return false

  elsif board[index] == "X" || board[index] == "O"
    return true
  end

end

# make a move

def move(board, index, character="X")
  board[index] = "#{character}"
  return board
end
