board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)

puts     " #{board[0]} | #{board[1]} | #{board[2]} "
puts     "-----------"
puts     " #{board[3]} | #{board[4]} | #{board[5]} "
puts     "-----------"
puts     " #{board[6]} | #{board[7]} | #{board[8]} "

end

def valid_move?(board, index)
 (!position_taken?(board, index) && index.between?(0,8)) ? true : false
end


def position_taken?(board, index)
 (board[index] == " " || board[index] == "" || board[index] == nil) ? false : true
end


def input_to_index(user_input)
  index = user_input.to_i - 1

end

def move(board, input_to_index, character = "X")
  board[input_to_index] = character
end


def turn(board)
puts "Please enter 1-9:"
user_input = gets.strip
index = input_to_index(user_input)
  if !valid_move?(board, index)
    turn(board)
  else
    puts "Please enter 1-9:"
  move(board, index, character = "X")
  display_board(board)
 end
 end
