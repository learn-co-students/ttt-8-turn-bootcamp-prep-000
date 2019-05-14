def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (!(position_taken?(board, index)) && index.between?(0,8))
    return true
  else
    return false
  end
end

def position_taken? (board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
  return converted_input
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
    if (valid_move?(board, input))
      move(board, input, value = "X")
  else
    turn(board)
  end
    display_board(board)
end
