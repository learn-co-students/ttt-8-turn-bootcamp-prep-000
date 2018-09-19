def valid_move? (board, index)
  if 0<= index && index<=8 && !position_taken?(board, index)
    return true
  else
    return false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken? (board, position)
  if board[position] == ""
    return false
  end
  if board[position] == " "
    return false
  end
  if board[position] == "  "
    return false
  end
  if board[position] == nil
    return false
  end

  if board[position] == "X"
    return true
  end

  if board[position] == "O"
    return true
  end
end

def display_board (board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index (user)

  index = (user.to_i)-1

end

def move(board,index, char ="X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index1 = input_to_index(index)

  if (valid_move?(board, index1) == false)


    turn(board)

  end

  #binding.pry

  move(board,index1)
  display_board(board)

end
