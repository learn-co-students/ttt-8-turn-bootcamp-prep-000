def display_board (board)
print  " #{board[0]} ","|", " #{board[1]} ","|", " #{board[2]} """
puts
puts "-----------"
print " #{board[3]} ","|", " #{board[4]} " ,"|", " #{board[5]} """
puts
puts "-----------"
print " #{board[6]} ","|", " #{board[7]} ","|", " #{board[8]} """
puts
end

def input_to_index(input)
"#{input}".to_i-1
end


def move(board, index, char = "X")
  board[index] = char
end

def valid_move?(board,index)
  if index.between?(0,8) && position_taken?(board,index) == false
    true
  else
    false
end
end

def position_taken?(board,index)
if board[index] == " " || board[index] == "" || board[index] == nil
    false

  else board[index] == "X" || board[index] == "O"
     true
end
end

def turn (board)
  puts "Please enter 1-9:"
input = gets.strip
index = input_to_index(input)
if valid_move?(board,index) == true
  move(board, index, char = "X")
  display_board (board)

else
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  until valid_move?(board,index) == true
end

end
end
