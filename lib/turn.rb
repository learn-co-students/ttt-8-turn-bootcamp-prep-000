def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  board 
end
def position_taken?(board, index)
  if board[index] == "  " || board[index] == " " || board[index] == "" || board[index] == NIL
    false
  else
    TRUE
  end
end
def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    return TRUE
  else 
    false
  end
end

def move(board, input_to_index, players_char = "X")
  board[input_to_index] = players_char
  board
end 
def input_to_index(user_input)
  user_input.to_i - 1
end
def turn(board)
  puts "Please enter 1-9:"
  user_selection = gets.strip
index = input_to_index(user_selection)
   valid_move?(board, index) ? move(board, index) : turn(board)
     
  display_board(board)
end