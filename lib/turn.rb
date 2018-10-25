def display_row(board, row_number)
  row_start = 3 * row_number
  row = [
    board[row_start],
    board[row_start + 1],
    board[row_start + 2]
  ]
  puts " #{row[0]} | #{row[1]} | #{row[2]} "
end

def display_board(board)
  separator = "-----------"
  
  display_row(board, 0)
  puts(separator)
  display_row(board, 1)
  puts(separator)
  display_row(board, 2)
end


def valid_move?(board, index)
  return index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  contents = board[index]
  return (contents != " ") && (contents != "") && (contents != nil)
end


def input_to_index(input)
  input.strip.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
  return board
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  
  index = input_to_index(input)
  
  if(valid_move?(board, index))
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
