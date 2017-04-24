board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} "
  puts  "-----------"
  puts  " #{board[3]} | #{board[4]} | #{board[5]} "
  puts  "-----------"
  puts  " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != " "
end

def move(board, index, char = "X")
  return board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  choice = gets.strip
  int_input = input_to_index(choice)
  until valid_move?(board, int_input) do
    puts "Please enter 1-9:"
    choice = gets.strip
    int_input = input_to_index(choice)
  end
  move(board, int_input, char = "X")
  display_board(board)
end
