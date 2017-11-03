def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  validate = false
  while validate == false
    puts "Please enter 1-9:"
    input = gets.strip
    input = input_to_index(input)
    if valid_move?(board, input)
      move(board, input)
      display_board(board)
      validate = true
    else
      validate = false
    end
  end
end

def move(board, index, player = "X")
    board[index] =  player
end

def input_to_index(index = -1)
  index = index.to_i - 1
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end
