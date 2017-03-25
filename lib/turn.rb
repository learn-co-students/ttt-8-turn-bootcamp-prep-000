def turn(board)
  puts "Please enter 1-9:"
  arg = gets.strip
  index = input_to_index(arg)

  until (valid_move?(board, index)) do
    puts "Please enter 1-9:"
    arg = gets.strip
    index = input_to_index(arg)
  end

  move(board, index)
  display_board(board)
end

#helper methods
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  !!board[index] && !(board[index] == "") && board[index] != " "
end

def display_board(board)
  horizontal_line = "-----------\n"
  row_1 = " #{board[0]} | #{board[1]} | #{board[2]} \n"
  row_2 = " #{board[3]} | #{board[4]} | #{board[5]} \n"
  row_3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  puts row_1 + horizontal_line + row_2 + horizontal_line + row_3
end

def move(board, index, player="X")
  board[index] = player
end

def input_to_index(input)
  input.to_i - 1
end
