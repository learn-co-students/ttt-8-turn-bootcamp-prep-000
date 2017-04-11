# code your #valid_move? method here
def turn(board)
  puts "Please enter 1-9:"
  puts "use 'help' for board index"
  input = gets.strip
  index = input_to_index(input)
  if input == "help"
    testboard
    turn(board)
  elsif valid_move?(board, index)
    board[index] = "X"
    display_board(board)
  else
    puts "That move was not vaild please try again"
    turn(board)
  end
  
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
  board
end

def valid_move?(board, index)
  if !position_taken?(board, index) && on_board?(index)
    true
  else
    false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def on_board?(index)
  if index.between?(0, 8)
    true
  else
    false
  end
end

def testboard()
  test_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  display_board(test_board)
end

def display_board(board)
  row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  row2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  line = "-----------"
  board = [row1, line, row2, line, row3]

  puts board
end