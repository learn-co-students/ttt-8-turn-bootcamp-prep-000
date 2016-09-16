def input_to_index(str)
  str.to_i - 1
end

def position_taken?(board, i)
  board[i] == "X" || board[i] == "O"
end

def valid_move?(board, i)
  i.between?(0, 8) && !(position_taken?(board, i)) ? true : false
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(array, i ,char = 'X')
  array[i]= char
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  puts ""
  until valid_move?(board, index)
    puts "Thats not a valid move.\nPlease enter a number from 1 - 9."
    index = input_to_index(gets.strip)
  end
  move(board, index)
  display_board(board)
end
