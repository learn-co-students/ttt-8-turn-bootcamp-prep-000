def turn(board)

puts "Please enter 1-9:"
input = gets.strip
index = input_to_index(input)

if valid_move?(board, index) == true
  board
if move(board, index) == "X" || move(board, index) == "Y"
  board
end
else
  turn(board)
end
display_board(board)


end


def valid_move?(board, index)

  if index.between?(1,9)
      if !position_taken?(board, index)
         true
       end
     end

index.between?(0,8) && !position_taken?(board, index)

end

def position_taken?(board, index)

  (board[index] ==  " " || board[index] == "" || board[index] == nil) ?
      false : true

end

def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} "
  puts  " -----------"
  puts  " #{board[3]} | #{board[4]} | #{board[5]} "
  puts  " -----------"
  puts  " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end
