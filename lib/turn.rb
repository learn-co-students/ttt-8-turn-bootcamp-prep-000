def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  pos = input_to_index(input)
  if valid_move?(board,pos)
    move(board,pos)
    puts pos
    display_board(board)
  end
end

def move(board, index, char="X")
  board[index-1] = char
  board
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
    true
  elsif position_taken?(board, index)
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == " " || board[index] == ""
    false
  end
end

def input_to_index(num)
  num.to_i
end 