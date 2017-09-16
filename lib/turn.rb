def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (index >= 0 && index < 9) && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] == nil
    return false
  end
end

def input_to_index(input = -1)
  position = input.to_i - 1
end

def move(board, index, xo = "X")
  board[index] = xo
end

def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)
  if valid_move?(board, input) == true
    move(board, input, "X")
    display_board(board)
    #turn(board)
  else
    puts "Invalid move"
    turn(board)
  end
end
