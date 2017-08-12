def display_board(board)
  divider = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "#{divider}"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "#{divider}"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board,index)
  if index.between?(0, 8) && !(position_taken?(board,index))
    true
  else
    false
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(array, index, value="X")
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  response = gets.chomp
  index = input_to_index(response)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end
