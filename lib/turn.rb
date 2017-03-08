def display_board(board)
  # show the board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# is index valid? - #valid_move(board,index) && #position_taken(board,index)
def valid_move?(board,index)
  if index.between?(0,8)
    if !position_taken?(board,index)
      true
    end
  else
    false
  end
end

def position_taken?(board,index)
  if board[index] == nil || board[index] == "" || board[index] == " "
    false
  else
    true
  end
end

# Convert input to index
def input_to_index(input)
  input.to_i - 1
end

# make the move
def move(board,index,team="X")
  board[index]=team
end

def turn(board)
  # ask for input
  puts "Please enter 1-9:"

  # get input
  input = gets.strip
  
  # convert input to index
  index = input_to_index(input)

  # if index/move is valid, then move if not start over
  if valid_move?(board,index)
    # move
    move(board,index)
  else
    # invalid -- restart CLI
    turn(board)
  end
  # display board with all turns
  puts "\nAfter your turn the board shows:\n"
  display_board(board)
end
