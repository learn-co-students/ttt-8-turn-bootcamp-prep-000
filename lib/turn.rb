def display_board(board)
  
  cells = []
  i = 0
  while i <= 8
    cells[i] = " #{board[i]} "
    i += 1
  end
  
  row_1 = "#{cells[0]}|#{cells[1]}|#{cells[2]}"
  row_2 = "#{cells[3]}|#{cells[4]}|#{cells[5]}"
  row_3 = "#{cells[6]}|#{cells[7]}|#{cells[8]}"
  line = "-" * 11
  
  puts "#{row_1}\n#{line}\n#{row_2}\n#{line}\n#{row_3}"
end

def position_taken?(board, index)
  if board[index] != " " && board[index] != ""
    true
  else
    false
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    true
  else
    false
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = "#{character}"
end

def turn(board)
  
  puts "Please enter 1-9:"
  
  input = gets.strip
  index = input_to_index(input)
  
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  
  display_board(board)
end

# board = [" ", " ", " ", "X", " ", " ", "X", "X", "X"]
# display_board(board)
# puts position_taken?(board, 4)
# puts valid_move?(board, 4)