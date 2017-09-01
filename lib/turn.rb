def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if(valid_move?(board, index))
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end

def move(board, index, character="X")
  board[index] = character
end

def input_to_index(input)
  input.to_i - 1;
end

def valid_move?(board, index)
  if (!position_taken?(board, index))
    if index.between?(0, 8)
      true
    else
      false
    end
  elsif (position_taken?(board, index))
      return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def display_board(board)
  line = "-----------"
  puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts("#{line}")
  puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts("#{line}")
  puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end
