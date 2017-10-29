def display_board(board)
  rows = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts rows
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts rows
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(int)
  num = int.to_i
  num - 1
end

def valid_move?(board, index)
  if (index.between?(0,8) && position_taken?(board, index) ==false)
    return true
  end

  return false
end

def position_taken?(board, index)
  if (board[index] == "" || board[index] == " " || board[index] == nil)
    return false
  end

  if (board[index] == "X" || board[index] == "O")
    return true
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  num = input_to_index(input)
  if valid_move?(board, num) == true
    move(board, num)
    return display_board(board)
  end

return turn(board)
end
