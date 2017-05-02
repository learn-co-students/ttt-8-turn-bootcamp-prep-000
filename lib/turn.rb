#ask user for their move by choosing position 1-9
#recieve the input
#convert position to index of array
#if the move is valid, make the move and display board
#if it is invalid ask for a new move until a valid move is made

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !position_taken?(board, index) && 0 <= index && index <= 8
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def move(board, index, character = "X")
  board[index] = character
end

def input_to_index(input)
  input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, character = "X")
    display_board(board)
  else 
    turn(board)
  end
end
