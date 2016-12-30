def display_board(board)
  puts " #{board[0]} ""|"" #{board[1]} ""|"" #{board[2]} "
  puts "-----------"
  puts " #{board[3]} ""|"" #{board[4]} ""|"" #{board[5]} "
  puts "-----------"
  puts " #{board[6]} ""|"" #{board[7]} ""|"" #{board[8]} "
end



def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    valid = true
  else
    valid = false
  end

  valid
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    taken = false
  elsif board[index] == "X" || board[index] == "O"
    taken = true
  else
    taken = false

  end
  taken
end

def input_to_index(input)
  index = input.to_i - 1
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def move(board, index, value="X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  display_board(board)
  if valid_move?(board, index)
    move(board, index, value="X")
    display_board(board)
  else
    turn(board)


  end


end
