def display_board(board)
  puts """
     #{board[0]} | #{board[1]} | #{board[2]} 
     -----------
     #{board[3]} | #{board[4]} | #{board[5]} 
     -----------
     #{board[6]} | #{board[7]} | #{board[8]} 
  """
end

def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " "
    false
  else
    true
  end
end

def input_to_index(input)
  index = input.to_i - 1 # convert input to index
end

def move(board, index, char = 'X')
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, 'X') # right now, we're only worried about x
    display_board(board)
  else
    turn(board)
  end
end
