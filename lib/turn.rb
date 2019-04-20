def display_board(board)

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def valid_move?(board, index)

if (index < 9) && (index >= 0) && board[index] == " "
  true
    else
  false
end
end

def input_to_index(input)
input = input.to_i
input - 1
end

def move(board, index, token="X")
  
board[index] = token
board
end

def turn(board)
  

  puts "Please enter 1-9:"
  movey = gets.strip
  movey = input_to_index(movey)
  if valid_move?(board, movey)
  move(board, movey)
  display_board(board)
else
  turn(board)
end

end


def turnrejeect(board)
  
 loop do 
  puts "Please enter 1-9"
  movey = gets.strip
  if valid_move?(board, input_to_index(movey))
  move(board, input_to_index(movey))
  display_board(board)
else
  puts "Move not valid"
end
end
end