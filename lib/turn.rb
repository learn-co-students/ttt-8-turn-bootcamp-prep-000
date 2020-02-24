def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if !valid_move?(board, index)
    turn(board)
    return
  end 
  move(board, index, player = "X")
  display_board(board)
  return
end
def valid_move?(board, index)
  return position_taken?(board, index) && index.between?(0,8)
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return true
  else
    return false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input = "0")
  index = user_input.to_i - 1
end

def move(board, position, player = "X")
  board[position] = player
end
