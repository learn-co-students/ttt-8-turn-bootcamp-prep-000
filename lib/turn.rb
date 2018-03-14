def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, val)
  if val.between?(0,8) and !position_taken?(board, val)
    return TRUE
  end
  return FALSE
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, val)
  if board[val] == " " or board[val] == "" or board[val] == nil
    return FALSE
  end
  return TRUE
end

def input_to_index(index)
  return (index.to_i - 1)
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.chomp
  index = input_to_index(index)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end