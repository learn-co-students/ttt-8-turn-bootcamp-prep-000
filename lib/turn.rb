
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  if index < 0 || index > 8
    nil
  elsif position_taken?(board, index) == false #&& index.beween?(0, 8)
    true
  elsif position_taken?(board, index) == true
    false
  end
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end


def move(board, index, token="X")
  board[index] = token
end


def input_to_index(user_input)
 (user_input.to_i) - 1
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.to_i
  index = input_to_index(user_input)
  #validity = valid_move?(board, index)
  #if validity == false
    #turn(board)
  #end
  if valid_move?(board, index)
      move(board, index, token="X")
    else turn (board)
  end
  display_board(board)
end
