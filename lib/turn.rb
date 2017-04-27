def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
   if valid_move?(board, index) == false
      puts "Invalid Selection"
      turn(board)
   end
  move(board, index)
  display_board(board)
end



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, input)
  index = input 
  if index > 8 || index < 0
    return false
  end
position_taken?(board, index) == false
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else
    return true
  end
end

def input_to_index(str)
  int = str.to_i
    if int == 0
      return -1
    end
  return int - 1
end

def move(board, position, char = "X")
  board[position] = char
  return board
end

