def turn(board)
  puts "Please enter 1-9:"
  player_move = gets
  index = input_to_index(player_move)
  if valid_move?(board, index)
    move(board, index, "X")
  else
    turn(board)
  end
  display_board(board)
end

# DISPLAY BOARD FUNCTION
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# TURNS INPUT TO VALID INDEX
def input_to_index(player_move)
  return player_move.to_i - 1
end

# MAKE A MOVE
def move(board, index, piece_type = "X")
  board[index] = piece_type
end


# IS MY MOVE VALID
def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif index > board.length
    return false
  elsif index < 0
    return false
  else
    return true
  end
end


# CAN I TAKE THIS POSTION
def position_taken?(board, index)
  if board[index] == "X"
    return true
  end
  if board[index] == "O"
    return true
  end
  if board[index] == " " || ""
    return false
  end
end
