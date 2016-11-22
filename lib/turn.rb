def valid_move?(board, ind)
  ind.between?(0, 8) && !position_taken?(board, ind)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, ind)
  !(board[ind] == "" || board[ind] == " " || board[ind] == nil)
end

def input_to_index(num)
  num.to_i - 1
end

def move(board, ind, ch = "X")
  board[ind] = ch
  board
end

def display_board(arr)
  puts " #{arr[0]} | #{arr[1]} | #{arr[2] } "
  puts "-----------"
  puts " #{arr[3]} | #{arr[4]} | #{arr[5] } "
  puts "-----------"
  puts " #{arr[6]} | #{arr[7]} | #{arr[8] } "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
