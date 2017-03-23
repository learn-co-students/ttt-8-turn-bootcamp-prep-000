def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)

  if valid_move?(board, index)
    move(board,index)
    display_board(board)
  else
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

# code your input_to_index and move method here!
def input_to_index(input)
  input = input.to_i - 1

end

def move(board, index, char="X")
  board[index] = char
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index < 0 || index > 8
    return false
  elsif position_taken?(board, index)
    return false
  else return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board,index)
  board[index] != " " && board[index] != "" && board[index] != nil
end
