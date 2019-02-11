# prints the current board
def display_board(board)
  lines = "-----------"
  i = 0
  result = ""
  3.times do
    3.times do
      result.concat(" #{board[i]} |")
      i = i.next
    end
    result = result.chop
    result.concat("\n#{lines}\n")
  end
  13.times do
    result = result.chop
  end

  puts result
end

# turns user input (string 1-9) into index that we can use in arrays (number 0-8)
def input_to_index(input)
  input.to_i - 1
end

# updates the board based on user's choice and prints it
def move(board, input, character = "X")
  board[input] = character
  display_board(board)
end

# checks if user's choice is legal
def valid_move?(board, index)
  if position_taken?(board, index) or !(index >= 0 and index < 9)
    false
  else
    true
  end
end

# checks if a position is taken (duh)
def position_taken?(board, index)
  if board[index] == nil or board[index] == "" or board[index] == " "
    false
  else
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  move_index = input_to_index(gets.strip)

  # keep asking for input until valid move
  while !valid_move?(board, move_index)
    puts "Seriously please enter 1-9:"
    move_index = input_to_index(gets.strip)
  end

  move(board, move_index)
end
