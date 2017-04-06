def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end



def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end

def move(board, index, token= "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  valid = false
  while valid == false
    input = gets
    index = input_to_index(input)
    if valid_move?(board, index)
      valid = true
      move(board, index)
      display_board(board)
    end
  end
end
