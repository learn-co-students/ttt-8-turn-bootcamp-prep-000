def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
  
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0,8)
end

def move(board, position, char = "X")
  board[position] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  position = input_to_index(input)
  if valid_move?(board, position) 
    move(board, position)
    else puts "Please enter 1-9:"
      input = gets.strip
      position = input_to_index(input)
  end
    display_board(board)
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end