def display_board(board)
  output = " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
  puts output
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif index.between?(0, 8) 
    return true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
  return true
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, index, character="X")
  board[index] = character
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, character="X")
  else
    puts "Please make a valid move."
    turn(board)
  end
end

