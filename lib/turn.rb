def turn(board)
  puts "Please enter 1-9:"
number = gets.strip # gets.strip returns to us a string, 1 would be "1"
index = input_to_index(number)
if valid_move?(board, index)
move(board, index)
else
  turn(board)
end
display_board(board)
end



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(number)
  (number.to_i) - 1 # 0
end

def move(board, position, character = "X")
  board[position] = character
end


def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
if position_taken?(board,index) == false && index.between?(0, 8) == true
  return true
elsif position_taken?(board,index) == true
  return false
elsif index.between?(0, 8) == false
return false

end
end


def position_taken?(board,index)

if board[index] == " "
  return false
elsif board[index] == ""
  return false
elsif board[index] == nil
  return false


end

  true
end
