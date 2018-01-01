def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  index = input_to_index(position)
  if valid_move?(board, index)
     #make the move
     move(board, index)
     display_board(board)
  else
    #ask for input again until you get a valid input

      turn(board)

  end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? returns true if the position_taken is false and if the play is on the board
def valid_move?(board, index)
  if !(position_taken?(board, index)) && index.between?(0, 8)
      true
  else
      false
  end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
     false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def input_to_index(index)
  index = index.to_i - 1
end

def move(board, index, token="X")
  board[index] = token
end
