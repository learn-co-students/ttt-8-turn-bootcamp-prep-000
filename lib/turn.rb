def valid_move?(board, index)
  if(index > 8 || index < 0 )
    return FALSE
  elsif position_taken?(board, index)
    return FALSE
  else
    return TRUE
  end
end

    

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return FALSE
  else
    return TRUE
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
  input = input.strip
  return input.to_i - 1
end

def move(board, i, x_or_o = "X")
  if valid_move?(board,i)
    board[i] = x_or_o
  else
    turn(board)
  end
end
def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip

  move(board, input_to_index(input))
  display_board(board)
  #turn(board)
end
