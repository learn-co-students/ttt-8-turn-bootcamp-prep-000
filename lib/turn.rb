def display_board(board)
  
  # Convert board elements to board cells with added whitespace
  cells = []
  i = 0
  while i <= 8
    cells[i] = " #{board[i]} "
    i += 1
  end
  
  # Construct the board's 3 rows
  row_1 = "#{cells[0]}|#{cells[1]}|#{cells[2]}"
  row_2 = "#{cells[3]}|#{cells[4]}|#{cells[5]}"
  row_3 = "#{cells[6]}|#{cells[7]}|#{cells[8]}"
  
  # Construct a divider line
  line = "-" * 11
  
  # Construct and print out the board
  puts "#{row_1}\n#{line}\n#{row_2}\n#{line}\n#{row_3}"
  
end

def position_taken?(board, index)
  
  # Position is 'taken' if the cell is not empty
  if board[index] != " " && board[index] != ""
    true
  end
  
end

def valid_move?(board, index)
  
  # Move is valid if it's to a position that exists on the board
  # and that position is empty
  if index.between?(0, 8) && !position_taken?(board, index)
    true
  end
  
end

def input_to_index(input)
  
  # Convert a user input "1"-"9" to an integer 0-8
  input.to_i - 1
  
end

def move(board, index, character = "X")
  
  # Reassign a board position to indicate a player's move
  board[index] = "#{character}"
  
end

def turn(board)
  
  puts "Please enter 1-9:"
  
  # Get input and convert it to an index
  input = gets.strip
  index = input_to_index(input)
  
  # Execute a move if the index is valid; otherwise ask for
  # new input
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  
  # Show the new state of the board after a valid move
  display_board(board)
  
end