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

def move(array, index, value = "X")
  array[index] = value
end

def valid_move?(board, index)
  index = index.to_i
  if index.between?(0, 8) == true && !position_taken?(board, index)
    return TRUE
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return FALSE
  elsif board[index] == NIL
    return FALSE
  elsif board[index] == "X" || board[index] == "O"
    return TRUE
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  input = input_to_index(input)
  if valid_move?(board, input) && !position_taken?(board, input)
    move(board, input, "X")
    display_board(board)
  else
    input = gets
  end
end