def display_board(board)
  pipe = "|"
  hr = "-----------"
  puts " #{board[0]} " + pipe + " #{board[1]} " + pipe + " #{board[2]} "
  puts hr
  puts " #{board[3]} " + pipe + " #{board[4]} " + pipe + " #{board[5]} "
  puts hr
  puts " #{board[6]} " + pipe + " #{board[7]} " + pipe + " #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, index, token="X")
  board[index] = token
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || !board[index]
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board, input)
  else
    turn(board)
  end
  display_board(board)
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.to_i.between?(0,8)
    return true
  else
    return false
  end
end
