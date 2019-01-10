board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#convert user input to integer, translate to index
def input_to_index(input)
  index = input.to_i - 1
end


#find out if position is empty
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end


#when user selects square and token (ie X or O), update board array
def move(board, index, value = "X")
  board[index] = value
  board
end


#validate move  - position must exist, must not be occupied
def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board,index)
    return true
  end
end


def turn(board)
  display_board(board)
  
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
      
  if valid_move?(board, index)
    move(board, index, value = "X")
    display_board(board)
  else
    puts "Invalid move."
    turn(board)
  end
end