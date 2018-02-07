def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end


def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return true
  end
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false

  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end


def move(board, index, token = "X")
  board[index] = token
end


def turn(board)
  puts "Please enter 1-9:"
  move = input_to_index(gets)
  if !valid_move?(board, move)
    turn(board)
  end

  move(board, move)
  display_board(board)

end
