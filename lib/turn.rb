def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

def input_to_index(index)
  index = index.to_i - 1
   return index
end

def move(board, index, mark = "X")
  board[index] = mark
  return board
end

def valid_move?(board, index)
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
  if !position_taken?(board, index)  && index.between?(0, 8)
    return true
  else
    return false
  end
end


def position_taken?(board, index)
  if board[index] == ' ' || board[index] == '' || board[index] == nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip

  until valid_move?(board, input_to_index(input))
    puts "Please enter 1-9:"
    input = gets.strip
  end
index = input.to_i - 1

  move(board, index)

  display_board(board)

end
