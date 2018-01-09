#display_board
def display_board(board)
  line_separator = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "#{line_separator}"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "#{line_separator}"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index
def input_to_index(x)
  x.to_i - 1
end
#position_taken?
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

#valid_move?
def valid_move?(board, index)
  if (index.between?(0, 8) && position_taken?(board, index) == false)
    true
  end
end

#move
def move(array, index, value = "X")
  array[index] = value
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
