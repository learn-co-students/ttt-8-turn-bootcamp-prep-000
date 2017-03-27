def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (index.between?(0, 8) && position_taken?(board, index) == false)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if (board[index] == " " || board[index] == "")
    false
  elsif (board[index] == "X" || board[index] == "O")
    true
  else
    false
  end
end

def input_to_index(thing)
  index = thing.to_i - 1
end

def move(board, index, character = "X")
  board = board
  board[index] = "#{character}"
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  until valid_move?(board, index) == true
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  end
  move(board, index)
  display_board(board)
end
