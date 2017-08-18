# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
    puts " #{board[0]} ""|"" #{board[1]} ""|"" #{board[2]} "
    puts "-----------"
    puts " #{board[3]} ""|"" #{board[4]} ""|"" #{board[5]} "
    puts "-----------"
    puts " #{board[6]} ""|"" #{board[7]} ""|"" #{board[8]} "
end

# check if move is valid
def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    true
  else
    false
  end
end

# is the position already taken?
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(array, index, value = "X")
    array[index] = value
end

def turn(board)
  # ask for and store user input
  puts "Please enter 1-9:"
  input = gets.strip
  # convert input to array index
  index = input_to_index(input)
  # if not valid input, repeat sequence until valid
  if !valid_move?(board, index)
    turn(board)
  # if valid index, update array and display updated board
  else
    move(board, index, value = "X")
    display_board(board)
  end
end
