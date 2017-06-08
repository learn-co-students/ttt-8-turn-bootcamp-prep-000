def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  (board[index] == "" ||   board[index] == " " ||  board[index] == nil )?
   false : true
end

def valid_move?(board, index)
  (!position_taken?(board, index) && index.between?(0, 8))?
    true : false
end

def input_to_index(num)
 num = num.to_i - 1
end

def move(board, index, value= "X")
  board[index] = value
end

def turn(board)
  # ask for input
  puts "Please enter 1-9:"
  # get input
  input = gets
  # convert input to index
    index = input_to_index(input)
  # if index is valid
  if (valid_move?(board, index))
    #   make the move for index
    move(board, index)
    #   show the board
    display_board(board)
  else
    turn(board)
  end
  # else
  #   ask for input again until you get a valid input
  # end
end
