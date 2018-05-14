def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_move)
  @usermove = user_move.to_i - 1

end

def move(array, index, value = "X")
  array[index] = value
end

def valid_move?(board, index)
  index.between?(0,8) and not position_taken?(board, index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_move = gets.strip
  input = input_to_index(user_move)
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    puts "That wasn't quite right"
    turn(board)
  end
end
