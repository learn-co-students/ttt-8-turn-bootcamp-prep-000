def display_board(array)
  row1 = " #{array[0]} | #{array[1]} | #{array[2]} "
  row2 = " #{array[3]} | #{array[4]} | #{array[5]} "
  row3 = " #{array[6]} | #{array[7]} | #{array[8]} "
  separater = "-----------"
  puts row1
  puts separater
  puts row2
  puts separater
  puts row3
end

def valid_move?(board, index)
  move = index.to_i
  if (move.between?(0, 8))
    if position_taken?(board, move)
       false
    else
       true
    end
  else
     false
  end
end


def position_taken?(board, position)
  if ((board[position] == " ") || (board[position] == "") || (board[position] == nil))
    false
  elsif ((board[position] == "X") || (board[position] == "O"))
    true
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, position, char = "X")
  board[position] = char
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if (valid_move?(board, index))
    move(board, index)
  else
    puts "That was in invalid choice."
    turn(board)
  end
end
