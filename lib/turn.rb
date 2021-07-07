def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1
end

def move(board, index, playersCharacter = 'X')
  board[index] = playersCharacter
end

# code your #valid_move? method here
def valid_move?(board, index)
  if (!position_taken?(board, index) && index.between?(0,8))
    TRUE
  else
    FALSE
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if (board[index] == "X" || board[index] == "O")
    TRUE
  elsif (board[index] == " " || board[index] == "" || board[index] == NIL)
    FALSE
  end
end

# turn 
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == TRUE
    move(board, index, playersCharacter = 'X')
    display_board(board)
  else
    turn(board)
  end
end