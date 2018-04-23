def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    true
  else
    false
  end
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"          # ask for input
  input = gets.chomp #get input     # get input
  index = input_to_index(input)     # convert input to index
  if valid_move?(board, index)      #if index is valid
    move(board, index)              # make the move for input
    display_board(board)            # display a correct board after a valid turn
  else
    turn(board)                     # ask for input again until get a valid input
  end
end