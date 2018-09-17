def display_board (board)
puts (" #{board[0]} | #{board[1]} | #{board[2]} ")
puts ("-----------")
puts (" #{board[3]} | #{board[4]} | #{board[5]} ")
puts ("-----------")
puts (" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def valid_move?(board, index)
  !(position_taken?(board, index)) && index.to_i.between?(0,8)
end

def move(board, index, name = "X")
  board[index] = name
end

def input_to_index(move)
   index = move.to_i - 1
   index
end

def position_taken?(board, index)
!(board[index] ==  " " || board[index] == "" || board[index] == nil) 
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board,index)
    move(board, index)
    display_board(board)
   else
    turn(board)
  end 
end 
  

