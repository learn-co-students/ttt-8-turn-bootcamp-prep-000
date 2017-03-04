
def display_board(board)
  line = "-----------"

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(user_input)
  index = user_input.to_i - 1

end

def move(board, index, character="X")
  board[index] = character

end

def valid_move?(board, index)
  # index = input - 1 assumed this should be used to convert input to index
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index_number)
  if (board[index_number] == "X") || (board[index_number] == "O")
    return true
  elsif (board[index_number] == " ") || (board[index_number] == "") || (board[index_number] == nil)
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, character="X")
    display_board(board)
  else
    turn(board)
  end
end
