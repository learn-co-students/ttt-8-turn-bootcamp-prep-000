def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board, index)
  else
    puts "That's not a valid move. Please try again"
    turn(board)
  end
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

def move(board, index, character = "X")
  board[index] = character
  display_board(board)
end

def valid_move?(board, index)
  if board[index] == "X" || board[index] == "O"
    false
  elsif index < 0 || index > 8
    false
  else
    true
  end
end
