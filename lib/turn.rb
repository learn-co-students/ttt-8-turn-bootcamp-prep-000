require "pry"

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts "  #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts "  #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts "  #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) || !index.between?(0, 8)
    return false
  else 
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, pos_idx)
  if board[pos_idx] == " " || board[pos_idx] == "" || board[pos_idx] == nil
    return false
  elsif board[pos_idx] == "X" || board[pos_idx] == "O" 
    return true
  end
end

def move(board, index, mark="X") 
  if !position_taken?(board, index)
    board[index] = mark
  end
 
  board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

  if valid_move?(board, index)
    move(board, index, mark="X")
  else
    turn(board)
  end
  display_board(board)
end

  
  
  
  
    # unless valid_move?(board, index)
  #   turn(board)
  # #else true
  # end
  
  # # move(board, index, mark="X")
  
  # valid_move?(board, index)


