#turn
def turn(board)
  #ask for input
  puts "Please enter 1-9:"
  #get input
  user_input = gets.strip.to_i
  #convert input to index
  index = input_to_index(user_input)

  if valid_move?(board, index) == true && position_taken?(board, index) == false
    #  make the move for index
    move(board, index, char = "X")
    #  show the board
    display_board(board)
  else 
    turn(board)
  end
  
end

#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = (user_input.to_i) - 1
end

#valid_move?
def valid_move?(board, index)
  if (position_taken?(board, index) == true) || index.between?(0, 8) == false
    false
  else (index.between?(0, 8) == true) && (position_taken?(board, index) == false)
    true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end

#move
def move(board, user_input, char = "X")
  board[user_input] = char
end

