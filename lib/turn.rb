# Define display_board that accepts a board and prints
# out the current state.
board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here

def valid_move?(board, index)
    if index.between?(0,8) && !position_taken?(board, index)
        true
    else
      false
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      false
  else
    true
  end
end

# code your input_to_index and move method here!

def input_to_index(input)
  index = input.to_i
  index -= 1
  return index
end

def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, character = "X")
    display_board(board)
  else
    "Please submit a valid answer."
    turn(board)
  end
end
