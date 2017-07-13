def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1   # or simply input.to_i - 1
end

def valid_move? (board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def move(board, index, player = "X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  # get input
  input = gets.strip
  # convert input to index
  index = input_to_index(input)

  # loop => ask for input again until you get a valid input
  until valid_move?(board, index)
    puts "Please enter valid numbers 1-9. Choose empty space."
    input = gets.strip
    index = input_to_index(input)
  end
  # valid move for index and display of the updated board
  move(board, index, player = "X")
  display_board(board)
end
