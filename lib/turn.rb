def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  index = input.to_i - 1

  if index < 0
    return -1
  end

  return index
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == '' || board[index] == " " || board[index] == nil
    false
  # elsif board[index] == 'X' || board[index] == 'O'
  else
    true
  end
end

def move(board, index, char = 'X')
  return board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "That isn't a valid move"
    turn(board)
  end
end
