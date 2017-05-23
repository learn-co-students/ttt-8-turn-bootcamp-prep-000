def valid_move?(board, index)
# Ruby returns the value of the last thing it reads. There for this conditional statement is already returning true or false. Since it is just checking that both position taken is false and index is truly between (0,8), we can write this conditional statement on one line of code.
!position_taken?(board, index)  && index.between?(0,8)
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def move(board, index, char="X")
  update_array_at_with(board, index, char)
end

def update_array_at_with(array, index, value)
  array[index]=value
  return array
end

def turn(board)
  puts "Please enter 1-9:"
  user_input= gets.strip
  index = input_to_index(user_input)
  if  valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
