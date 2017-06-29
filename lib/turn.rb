#Should accept a board as an argument and print out the current state of the board for the user.
def display_board(brd)
  puts " #{brd[0]} | #{brd[1]} | #{brd[2]} "
  puts "-----------"
  puts " #{brd[3]} | #{brd[4]} | #{brd[5]} "
  puts "-----------"
  puts " #{brd[6]} | #{brd[7]} | #{brd[8]} "
end

# code your #valid_move? method here
def valid_move?(board, index)
  if (index > 8 || index < 0)
    puts "Invalid selection"
    return false
  elsif (position_taken?(board,index))
    puts "Position taken. Please select another"
    return false
  else
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  puts "Board index #{board[index]}"
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def input_to_index(x)
  x = x.to_i - 1
end

def move(board,mv,character="X")
  board[mv] = character
end


def turn(board)
  puts "Please enter 1-9:"
  inp = input_to_index(gets.strip)
  if (valid_move?(board,inp))
    move(board,inp,"X")
  else
    turn(board)
  end
  display_board(board)
end
