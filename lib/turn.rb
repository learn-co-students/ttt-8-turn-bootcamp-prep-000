# copy paste!
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index) == true || (index > 8 || index < 0)
    false #the position is taken
  elsif board[index] == "" || board[index] == " "
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false #no its not taken

  else
    true #position taken
  end
end

def input_to_index(string)
  string.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
  board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, character = "X")
    display_board(board)
  else
    until valid_move?(board, index) == true
      puts "Please input again:"
      turn(board)
      break
    end
  end
end
