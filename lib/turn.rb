def display_board(board)
separator = "|"
lines = "-----------"

puts " #{board[0]} #{separator} #{board[1]} #{separator} #{board[2]} "
puts "#{lines}"
puts " #{board[3]} #{separator} #{board[4]} #{separator} #{board[5]} "
puts "#{lines}"
puts " #{board[6]} #{separator} #{board[7]} #{separator} #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
 converted_input = user_input.to_i
 converted_input = converted_input - 1
end

def move( board, index, character="X")
  board[index]= character
  return board
end

# code your #valid_move? method here
def valid_move?(board, index)
(board[index] ==  " " || board[index] == "" || board[index] == nil) && index.between?(0,8)
end
#define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  ! (board[index] ==  " " || board[index] == "" || board[index] == nil)
  end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
if valid_move?(board,index) == true
  move(board,index)
  display_board(board)
else
  turn(board)
end
end
