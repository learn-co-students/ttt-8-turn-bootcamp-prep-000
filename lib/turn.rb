def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, char = "X")
    board[index] =  char
end  

def input_to_index(index)
  return index.to_i - 1
end

def valid_move?(board, index)
  if index < 0 || index > 8 
    return false
  elsif position_taken?(board,index) == true
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == ' ' || board[index] == "" || board[index] == nil
  return true
else
  return false
end
end

def turn(board)
puts 'Please enter 1-9:'
input = gets.strip
input = input_to_index(input)

if valid_move?(board, input) == false
turn(board)
else
  move(board, input)
end

display_board(board)
end