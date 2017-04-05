def turn(board)
  oldboard = board
  while oldboard == board
  puts "Please enter 1-9:"
  input = gets.strip
  index = input.input_to_index
  if valid_move?(board, index)
    move(board,index)
  else
    puts "That's not a valid move, please enter 1-9!"
  end
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0,board.length-1)
    if !position_taken?(board, index)
      true
    else
      false
    end
  else
    false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i-1
  return index
end

def move(board, index, char = "X")
  board[index] = char
end
