def turn(board)
  index = -1
  until index.between?(0, 8)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  end
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  end
end

# code your #valid_move? method here
def valid_move?(board, move)
  if !move.between?(0, 8)
    return false
  elsif position_taken?(board, move)
    return false
  elsif !position_taken?(board, move)
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    return false
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
def input_to_index(num)
  num.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end
