#accepts board as input & displays game board's current state
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#converts user input to index number
def input_to_index(input)
  index = input.to_i - 1
end

#checks if valid move
def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  else
    return false
  end
end

#checks if position already taken to be used in #valid_move?
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] ==  nil
    return false
    elsif board[index] == "X" || "O"
    return true
  end
end

#adds move to the board
def move(board, index, player = "X")
  board[index] = player
end

#gets player's move for this turn. If valid, prints board. If not valid, asks for input again.
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

