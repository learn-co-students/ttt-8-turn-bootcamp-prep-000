def display_board(board)

  row_one = " #{board[0]} | #{board[1]} | #{board[2]} "
  row_two = " #{board[3]} | #{board[4]} | #{board[5]} "
  row_three = " #{board[6]} | #{board[7]} | #{board[8]} "
  line_separate = "-----------"
  puts row_one
  puts line_separate
  puts row_two
  puts line_separate
  puts row_three
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    true


  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)


  if board[index] == "" || board[index] == " " || board[index] == nil
    false

  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
