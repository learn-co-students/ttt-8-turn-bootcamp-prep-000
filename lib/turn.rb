def input_to_index(input)
  input = input.to_i
  if input.between?(1,9)
    input -= 1
  else
    input = -1
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index) == false and index.between?(0,8)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == "X" or board[index] == "O"
    true
  end
end

def move(board, index, token="X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  loop do
    if valid_move?(board, index) == true
      break
    else
      input = gets.strip
      index = input_to_index(input)
    end
  end
  move(board, index)
  display_board(board)
end