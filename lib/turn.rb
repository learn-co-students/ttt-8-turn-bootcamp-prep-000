def display_board(board)
  line = '-----------'
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i-1
end

def valid_move?(board, index)
  #check to see if position is taken
  if !index.between?(0,8)
    false
  else
    !position_taken?(board,index)
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

def move(board, position, character="X")
  board[position] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_index = input_to_index(user_input)
  if valid_move?(board, input_index)
    move(board, input_index)
    display_board(board)
  else
    puts "Sorry, try again."
    turn(board)
  end
end
