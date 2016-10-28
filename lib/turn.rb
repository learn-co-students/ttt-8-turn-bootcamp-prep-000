def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index, "X")
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

# code your input_to_index and move method here!
def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, player = "X")
  board[index] = player
end

def valid_move?(board, idx)
  if idx.between?(0, 8) && !position_taken?(board, idx)
    true
  else
    false
  end
end

def position_taken?(board, idx)
  if board[idx] == " " || board[idx] == "" || board[idx] == nil
    false
  elsif board[idx] == "X" || board[idx] == "O"
    true
  end
end
