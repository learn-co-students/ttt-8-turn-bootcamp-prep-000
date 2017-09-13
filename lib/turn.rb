def display_board(board)
  puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts("-----------")
  puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts("-----------")
  puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(user_input)
  if(user_input.to_i)
    num = user_input.to_i
    return num - 1
  else
    return -1
  end
end

def valid_move?(board, index)
  if index < 0 || index > 8
    return false
  elsif (board[index] == nil || board[index] == " " || board[index] == "")
      return true
  else
    return false
  end
end


def move(board, position, character = "X")
#position = gets.to_i
if (valid_move?(board, position))
  board[position] = character
else
  "Please insert valid number"
  turn(board)
end
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  move(board, index)
  display_board(board)
end
