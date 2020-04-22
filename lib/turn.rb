#displays a Tic Tac Toe board, with board spaces as an array
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#converts a user input to the index in the board array.
def input_to_index(user_input)
  index = user_input.to_i
  index -=1
  return index
end

#Checks the index to see if 1) the position on board is taken ; 2) the index is on the board(0,8)
def valid_move?(board, index)
  def position_taken?(board, index)
    if board[index] == "" || board[index] == " "  || board[index] == nil
      return false
    else board[index] == "X" || board[index] == "O"
      return true
    end
  end

  def on_board?(index)
    if index.between?(0,8)
      return true
    else
      return false
    end
  end

  if ((position_taken?(board, index)) == false && (on_board?(index)) == true) == true
    return true
  else
    return false
  end
end

#MOVE: Takes an index and place the X or O char in that position on board
def move(board, index, character = "X")
  board[index] = character
  return board
end

#TURN: Ask for a number , check to see if it is valid, and if it is not, recursivley continues to aks for a number
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
