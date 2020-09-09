def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "----------- "
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "----------- "
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
end

def valid_move?(board, index)
  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      false
    elsif board[index] == "O" || board[index] == "X"
      true
    end
  end

  position_taken = position_taken?(board, index)

  if position_taken == false && index.between?(0,8)
    true
  else
    false
  end
end

# ask for input
# get input
# convert input to index
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again until you get a valid input
# end

def move(board, index, token = "X")
  if valid_move?(board, index) == true
    board[index] = "#{token}"
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    until valid_move?(board, index)
      puts "invalid"
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
    end
  move(board, index)
  display_board(board)
  end
end
