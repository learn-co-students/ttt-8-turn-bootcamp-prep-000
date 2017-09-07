def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(name)
  convert = name.to_i
  return convert - 1
end

def valid_move?(board, position)
  if position.between?(0,8) == true && position_taken?(board, position) == false
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board , position)
  if board[position] == " " || board[position] == ""
    return false
  elsif board[position] == nil
    return false
  else
    return true
  end
end

def move(board, input ,value= "X")
  board[input] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  convert = input_to_index(user_input)
  if valid_move?(board, convert) == true
    move(board, convert)
    return display_board(board)
  else
    return turn(board)
  end
end
