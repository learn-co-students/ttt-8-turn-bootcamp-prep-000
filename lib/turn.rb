def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  !position_taken?(board, index) && index >= 0 && index <= 8
end

def position_taken?(board, index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, sign = "X")
  board[index] = sign
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.to_i
  index = input_to_index(input)

  until valid_move?(board, index)
    puts "Please enter 1-9"
    input = gets.strip.to_i
    index = input_to_index(input)
  end
  
  move(board, index)
  display_board(board)
end
