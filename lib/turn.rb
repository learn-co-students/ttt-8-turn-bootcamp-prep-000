def display_board(board = [" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, index)
  if !index.between?(0, 8)
    false
  elsif position_taken?(board, index)
    false
  elsif !position_taken?(board, index)
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end
