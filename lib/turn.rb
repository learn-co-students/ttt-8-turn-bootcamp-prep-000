def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index return (-1) if invalid or (user_input - 1)
def input_to_index(user_input)
  convert = Integer(user_input) rescue nil
  if convert == nil
    return -1
  else
    return convert - 1
  end
end

#valid_move? return true if valide move
def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end
def position_taken?(board, index)
  if board[index]==" " || board[index]=="" || board[index]==nil
    return false
  else
    return true
  end
end

def move(board, index, token="X")
  board[index] = token
end
def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)
  while ( input == -1) || (valid_move?(board, input)==false)
    puts "Please enter 1-9:"
    input = input_to_index(gets.strip)
  end
  move(board, input)
  display_board(board)
end
