def display_board(board)
  lines = ["-----------"]
  puts [" #{board[0]} | #{board[1]} | #{board[2]} "]
  puts lines
  puts [" #{board[3]} | #{board[4]} | #{board[5]} "]
  puts lines
  puts [" #{board[6]} | #{board[7]} | #{board[8]} "]
end

def position_taken?(board,index)
  if board[index] == " "  ||  board[index] == ""  ||  board[index] == nil
    return false
  end
return true
end

def valid_move?(board,index)
  if position_taken?(board,index)
    return false
  elsif index.between?(0,8)
      return true
    end
      return false
    end

def input_to_index(input)
input = (input.to_i) - 1
end


def move(board,input,character = "X")
  board[input] = character
end

def turn(board)
puts "Please enter 1-9:"
input = gets.chomp
index = input_to_index(input)
if valid_move?(board,index) == true
  move(board,index,character = "X")
  display_board(board)
else
  puts "Try again!"
  turn(board)
end
end
