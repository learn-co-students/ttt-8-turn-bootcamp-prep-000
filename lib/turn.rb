def turn(board)
  puts "Please enter 1-9:"
  integer = gets.strip
  index = input_to_index(integer)
  
  if valid_move?(board, index)
    puts "You chose position #{integer}."
    move(board, index, value = "X")
    display_board(board)
  else
    puts "Invalid response or position taken."
    turn(board) #recursion
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
    true
  else
    false || nil
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def input_to_index(integer)
  index = integer.to_i
  index -= 1
end