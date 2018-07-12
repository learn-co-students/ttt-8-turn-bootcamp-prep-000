def turn(board)
  puts "Please enter 1-9:"
  user_number = gets.strip
  # Call input_to_index
  index = input_to_index(user_number)
  # validates

  if valid_move?(board,index) == false
  # asks for input again
    puts "Not a valid move. Try again."
    puts "Please enter 1-9:"
    user_number = gets.strip
    index = input_to_index(user_number)
  else
  #makes valid moves
    move(board, index, char="X")
  #displays board
    display_board(board)
   end
  end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# gets location of play
def input_to_index (user_number)
  index = user_number.to_i - 1
end

# checks if position is empty
def valid_move?(board,index)
  if !(board[index] == "X" || board[index] == "O") && index < 9 && index >= 0
    return true
  else
    return false
  end
end

def move (board, index, char = "X")
  board[index] = char
end
