#Define the variable board below.
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  
end

# code your input_to_index and move method here!

def input_to_index(input)
  input.to_i - 1
end

def move(board, input, char = "X")
  board[input] = char
end


#position_taken

def position_taken?(board, index)
  if board[index] == " " ||  board[index] == "" ||  board[index] == nil
      return false
  elsif board[index] == "X" ||  board[index] == "O"
     return true
  end
end


# code your #valid_move? method here

def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
    return true
  end
end


def turn(board) 
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == true 
    move(board, index, char = "X")
    display_board(board)
  else
    turn(board)
  end
end