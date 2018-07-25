board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}  "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]}  "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]}  "
end

def valid_move?(board, index)
  index.between?(0,8) && (board[index] == " " || board[index] == "" || board[index] == nil) 
end

def input_to_index(input)
  input.to_i - 1
end 

def move(board, index, char = "X")
  board[index] = char
  display_board(board)
end 

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == true
    move(board, index, char = "X")
  else
    turn(board)
 end 
end 