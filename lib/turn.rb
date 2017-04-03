def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
     return true
  end
  false
end

def position_taken?(board, index)
  empty = [nil, ""," "]
  return false if empty.include?(board[index])
  true
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  move_index = input_to_index(input)
  if valid_move?(board, move_index)
    move(board,move_index)
    display_board(board)
  else
    puts "Invalid move."
    turn(board)
  end
end
