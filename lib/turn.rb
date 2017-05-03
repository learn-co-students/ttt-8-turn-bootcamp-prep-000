def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  #until valid_move?(board, index)
  #  input = gets.strip
  #  index = input_to_index(input)
  #end
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
  

end

def display_board(board)
  pipe = "|"
  dash = "-----------"
  puts " #{board[0]} #{pipe} #{board[1]} #{pipe} #{board[2]} "
  puts dash
  puts " #{board[3]} #{pipe} #{board[4]} #{pipe} #{board[5]} "
  puts dash
  puts " #{board[6]} #{pipe} #{board[7]} #{pipe} #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, char="X")
  board[index] = char
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
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