def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, input)
  if (board[input] == " " && input.between?(0,8))
    return true
  end
  return false
end

def input_to_index(num)
  num = num.to_i - 1
  return num
end

def move(board, input, symbol = "X")
  board[input] = symbol
  return display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  input = input_to_index(input)
  if (!valid_move?(board, input))
    turn(board)
  end
  return move(board, input)
end
