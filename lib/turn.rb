def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, input, player = "X")
  board[input] = player.upcase
end

def position_taken? (board, position)
  (board[position] == "X" || board[position] == "O") ?
  true : false
end

def valid_move? (board, index)
  ( !position_taken?(board, index) && index.between?(0, 8) ) ?
  true : false
end

def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)
  until valid_move?(board, input)
    puts "Please enter 1-9:"
    input = input_to_index(gets.strip)
  end
  move(board, input)
  display_board(board)
end
