def move(board, input, player = "X")
  board[input] = player
  display_board(board)
end

def turn(board, player = "X")
  valid = false
  until valid do
    puts "Please enter 1-9:"
    input = gets.strip
    input = input_to_index input
    if valid_move?(board, input)
      move(board, input, player)
      valid = true
    end
  end
end

# This method prints the board to the console
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# This method converts user input to an index
def input_to_index(index)
  index.to_i - 1
end

# This method validates the users move
def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif (index > 8) || (index < 0)
    false
  else
    true
  end
end

# This method validates an empty position
def position_taken?(board, index)
  if !(!!board[index])
    false
  elsif board[index] == " "
    false
  elsif board[index] == ""
    false
  else
    true
  end
end