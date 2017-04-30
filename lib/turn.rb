def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) && position_taken?(board,index) == false
    move(board,index,value="X")
  else
    turn(board)
  end
  display_board(board)
end


# code your #valid_move? method here
def valid_move?(board, index)
  return true if index.between?(0,8) && position_taken?(board,index) == false
  return false
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  return false if board[index] == " " || board[index] == "" || board[index] == nil
  return true
end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(user_input)
  user_input = -1 if user_input == 0
  user_input = user_input.to_i - 1
end
def move(array,index,value="X")
  array[index] = value
end

# code your input_to_index and move method here!
