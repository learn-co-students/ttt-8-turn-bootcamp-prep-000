def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input_string)
    index = input_string.to_i - 1
end

def position_taken?(index)
  if index == "" || index == " " || index == nil
    false
  else
    true
  end
end

def valid_move?(board, index)
  position = board[index]
  if index.between?(0, 8) && position_taken?(position) == false
    true
  else
    false
  end
end

def move(board, position, character = "X")
  board[position] = character
end

def turn(board)
  # until board.join("").delete(" ").length == 9
    puts "Please enter 1-9:"
    input_string = gets.strip
    index = input_to_index(input_string)
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
    else
      turn(board)
    end
  # end
end
