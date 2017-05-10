board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts " #{board[0]} ""| #{board[1]} |"" #{board[2]} ", "-----------"," #{board[3]} ""| #{board[4]} |"" #{board[5]} ", "-----------", " #{board[6]} ""| #{board[7]} |"" #{board[8]} "
end
def valid_move?(board,index)
  if position_taken?(board,index) == false && index.between?(0,8)
    true
  else
    false
  end
end


def position_taken?(board,index)
  if board[index] == " " || board[index] == ""
    false
  else
    true
  end
end


def input_to_index(user_input = 0)
  user_input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index)
    return display_board(board)
  else
    turn(board)
  end
end
