def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts 'Please enter 1-9:'
  user_input = gets.chomp
  index = input_to_index(user_input)
  able_to_move = valid_move? board, index

  case able_to_move
  when true
    move(board, index)
    display_board(board)
  else
    puts 'That move is invalid. Please try again.'
    turn(board)
  end
end

def input_to_index(user_input)
  user_input = user_input.to_i unless user_input.is_a? Integer
  index = user_input -= 1
end

def valid_move?(board, index)
  valid_index?(board, index) && position_taken?(board, index)
end

def move(board, index, marker='X')
  board[index] = marker
end

def position_taken?(board, index)
  board[index].strip.empty?
end

def valid_index?(board, index)
  board[index] != nil && index >= 0
end

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
turn(board)