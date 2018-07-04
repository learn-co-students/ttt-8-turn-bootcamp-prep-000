def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == false
    until valid_move?(board, index) == true
      puts "Please try again.  1-9:"
      input = gets.chomp
      index = input_to_index(input)
    end
  end
  move(board, index)
  display_board(board)
end


def input_to_index(input)
  if input.to_i == 0
    -1
  else
    input.to_i - 1 
  end
end


def valid_move?(board, index)
  if index < 0 || index > 8
    false
  elsif board[index] == 'X' || board[index] == 'O'
    false
  elsif board[index] == " "
    true
  end
end


def move(board, index, character = "X")
  board[index] = character
end
