def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp.to_i
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board, index, character = "X")
  else
    turn(board)
  end
end

def input_to_index(x)
 x.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
  return board
end


def position_taken?(board, index)
if board[index] == "" || board[index] == " " || board[index] == nil
  return false
else
  return true
  end
end


def valid_move?(board, index)

  if position_taken?(board,index) == false && index.between?(0, 8)
    return true
  else
    puts "This is not a valid move!"
    return false
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
  end
end
