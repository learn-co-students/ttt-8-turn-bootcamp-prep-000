def turn(board)
  puts "Please enter 1-9:"
  input= gets.strip
  input= input_to_index(input)

  if valid_move?(board, input)
    move(board, input)
  else
    until valid_move?(board, input) == true
      puts "Position not available! Try Again! (1-9)"
      input= gets.strip
      input_to_index(input)
      valid_move?(board, input)
    end
  end
  display_board(board)
end





def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if index.to_i.between?(0, 8) && position_taken?(board, index.to_i)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " "
    true
  elsif board[index] == ""
    true
  elsif board[index] == nil
    true
  elsif board[index] == "X" || board[index] == "O"
    false
  end
end

def move(board, input, character= "X")
  board[input]= character
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
