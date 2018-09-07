def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  until valid_move?(board, index)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  end
  move(board, index)
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, player = "X")
  board[index] = player
end

def valid_move?(board, index)
  index >= 0 && index < 9 && !position_taken?(board, index)
end

def position_taken?(board, index)
  ["X", "O"].include?(board[index])
end

def input_to_index(index)
  index.to_i - 1
end