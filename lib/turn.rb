def turn(board)
  loop do
    puts 'Please enter 1-9:'
    input = gets.strip
    index = input_to_index(input)
    next unless valid_move?(board, index)
    move(board, index)
    display_board(board)
    break
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end

def position_taken?(board, index)
  ![' ', '', nil].include?(board[index])
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, character = 'X')
  board[index] = character
  board
end
