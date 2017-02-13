board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  print " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n
  #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n
  #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] == " " || ""
    return false
  end
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, char = "X")
    display_board(board)
  else
    turn(board)
  end
end
