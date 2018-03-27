def display_board(board)
  output = " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
  puts output
end

def valid_move?(board, index)
<<<<<<< HEAD
  if position_taken?(board, index)
    return false
  elsif index.between?(0, 8) 
    return true
=======
  if board[index] && index.between?(0, 8) 
    return !position_taken?(board, index)
>>>>>>> 8618b07c60089b70eb5bebffbc62b9c27fcc79a2
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

<<<<<<< HEAD
def move(board, index, character="X")
  board[index] = character
  display_board(board)
=======
def move(board, index, character='X')
  board[index] = character
  return board
>>>>>>> 8618b07c60089b70eb5bebffbc62b9c27fcc79a2
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
<<<<<<< HEAD
  if valid_move?(board, index)
    move(board, index, character="X")
  else
    puts "Please make a valid move."
    turn(board)
  end
=======
  until valid_move?(board, index) do
    turn(board)
  end
  puts move(board, index, character='X')
>>>>>>> 8618b07c60089b70eb5bebffbc62b9c27fcc79a2
end

