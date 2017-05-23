def valid_move?(board, index)
  if board[index] == nil || position_taken?(board,index) == true
    return false
  elsif position_taken?(board, index) == false && board[index].between?(0,8)
    return true
  elsif board[index].between?(0, 8) == false
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
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

def turn
end
