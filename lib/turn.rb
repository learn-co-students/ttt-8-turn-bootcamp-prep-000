#validate move
def valid_move?(board, index)
 index.between?(0,8) && !position_taken?(board, index)
end

#Code to check if position is already taken
def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else
    return true
  end
end

#Code to display board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code to input move index
def input_to_index(move)
  move = move.to_i
  move = move - 1
  return move
end

#code to make move
def move(board, move, sym = "X")
  board[move] = sym
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  valid = valid_move?(board, index)

  if !valid
    turn(board)
  else
    move(board, index, 'X')
    display_board(board)
  end

end
