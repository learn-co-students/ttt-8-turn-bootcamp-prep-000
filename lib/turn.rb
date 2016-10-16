def turn(board)
  puts "Please enter 1-9:"
  userIndex = gets.chomp
  num_userIndex = input_to_index( userIndex )
  if valid_move?( board, num_userIndex)
    move(board, num_userIndex)
    display_board( board )
  else
   turn(board)
  end
end


def display_board( board )
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, userIndex)
  if (userIndex >= 0) && (userIndex <= 9) && !position_taken?(board, userIndex)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, userIndex )
    if board[userIndex] == "X" || board[userIndex] == "O"
      true
    else
      false
    end
end

def input_to_index( playerMove )
  # convert PlayerMove to an integer and subtract 1 to make the index value
  return playerMove.to_i - 1

end

def move( board, playerIndex, player = "X" )
  board[playerIndex] = player;
end
