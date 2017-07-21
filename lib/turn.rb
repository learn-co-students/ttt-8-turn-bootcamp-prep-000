def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if(valid_move?(board, index))
    move(board, index)
    display_board(board)
  else
    puts "Invalid move. Please try again."
    turn(board)
  end  
end

# Below are helper functions:

def display_board(board)
  row_divider = "-----------"
  row_1 = " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  row_2 = " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  row_3 = " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "

  puts row_1
  puts row_divider
  puts row_2
  puts row_divider
  puts row_3
end

def input_to_index(input)
  index = input.to_i - 1
end

def position_taken?(board, index)
  !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def valid_move?(board, index)
  (!position_taken?(board, index)) && index.between?(0, 8)
end

def move(board, index, player = "X")
  board[index] = player
end
