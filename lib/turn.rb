def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  int = input.to_i
  if int != -1
    index = int - 1
  else
    index = -1
  end

end

def position_taken?(board, index)
  if board[index] == nil || board[index] == ""
    false
  else
    board[index] != " "
  end
end

def valid_move?(board, index)
  if index < 0 || index > board.length - 1
    false
  else
    !position_taken?(board, index)
  end
end

def move(board, index, character = "X")
  board[index] = character
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
