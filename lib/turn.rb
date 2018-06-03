def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)
  while !valid_move?(board, input) do
    puts "Please enter a valid move:"
    input = input_to_index(gets.strip)
  end
  move(board, input)
  display_board(board)
end

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

def move(board, index, char="X")
  board[index] = char
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return TRUE
  else
    return FALSE
  end
end

def position_taken?(board, index)
  if board[index].upcase == ("X" || "Y")
    return TRUE
  else
    return FALSE
  end
end

