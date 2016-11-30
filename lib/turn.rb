def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  if index >= 0 && index <= 8
    if board[index] == (" ") || board[index] == ("")
      true
    elsif board[index] == nil
      false
    elsif board[index] == ("X") || board[index] == ("O")
      false
    end
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.to_i
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, char = 'X' )
    display_board(board)
  else
    turn(board)
  end
end

def input_to_index(input)
   input = input.to_i
   index = input - 1
end

def move(board, index, char = 'X' )
   board[index] = char
end
