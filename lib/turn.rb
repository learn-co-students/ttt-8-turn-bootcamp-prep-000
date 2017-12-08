def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i
  index -= 1
end

def valid_move?(board, index)
  valid = true
  if index.between?(0, 8) && !position_taken?(board, index)
    valid = true
  end
end

def position_taken?(board, index)
  board[index] != " "
end

def move(board, index, first_move = "X")
  board[index] = first_move
end

def turn(board)
  input = puts "Please enter 1-9:"
  response = gets.strip
  converted = input_to_index(response)
  if valid_move?(board, converted) == true
    move(board, converted)
    return display_board(board)
  else
    turn(board)
  end
end
