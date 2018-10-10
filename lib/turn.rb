def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def valid_move?(board, index)
  if (index >= 0 && index < 9) && (board[index] == "" || board[index] == " " || board[index] == nil)
    return true
  end
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
    display_board(board)
  else
    turn(board)
  end
end
