
def display_board(board)
puts  display_board = [" #{board[0]} | #{board[1]} | #{board[2]} "]
puts display_board = ["-----------"]
puts  display_board = [" #{board[3]} | #{board[4]} | #{board[5]} "]
puts display_board = ["-----------"]
puts  display_board = [" #{board[6]} | #{board[7]} | #{board[8]} "]
end

def valid_move?(board, index)
index = index.to_i
if !position_taken?(board, index) && index.between?(0, 8)
  true
else
  false
end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
end
end


def input_to_index(user_input)
user_input.to_i  - 1
end

def move(board, index, character = "X" )
board[index] = character

end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.to_i-1
  input_to_index(input)
if valid_move?(board, input)
    move(board, input, character = "X")
   else
     turn(board)
   end
   display_board(board)

end
