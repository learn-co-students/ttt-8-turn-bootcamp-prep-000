def turn(board)
  puts "Please enter 1-9:"
  inp = gets.chomp
  index = input_to_index(inp)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def valid_move?(board, index)
  return ((index >= 0 && index <= 8) && !position_taken?(board, index))
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  return !(board[index] == "" || board[index] == " " || board[index] == nil)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(player_inp)
  return (player_inp).to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end
