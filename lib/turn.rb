
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.to_i
  index = input_to_index(user_input)
  if move(board, index, "X")
    display_board(board)
  else
    turn(board)
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
  return (user_input.to_i - 1)
end

def move(board, index, value ="X")
  if (valid_move?(board, index))
    board[index] = value
    return true
  else
    return false
  end
end

def valid_move?(board, index)
  (index.between?(0, 8) && position_taken?(board, index) == false) ?
  true : false
end

def position_taken?(board, index)
  (board[index] == "" || board[index] == " " || board[index] == nil) ?
  false : true
end