def display_board(x)
  puts " #{x[0]} | #{x[1]} | #{x[2]} "
  puts "-----------"
  puts " #{x[3]} | #{x[4]} | #{x[5]} "
  puts "-----------"
  puts " #{x[6]} | #{x[7]} | #{x[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index)
    false 
  elsif index.between?(0, 8)
    true
  end
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def input_to_index(x)
  return x.to_i - 1
end

def move(board, input_to_index, char = "X")
  board[input_to_index] = char
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end