
board = [" "," "," "," "," "," "," "," "," "]
def display_board(spaces)
  puts " #{spaces[0]} | #{spaces[1]} | #{spaces[2]} "
  puts "-----------"
  puts " #{spaces[3]} | #{spaces[4]} | #{spaces[5]} "
  puts "-----------"
  puts " #{spaces[6]} | #{spaces[7]} | #{spaces[8]} "
end


def valid_move?(board, index)
  if position_taken?(board, index)
    false 
  elsif index.between?(0, 8)
    true
  end 
end 

def position_taken? (board, index)
  if board[index] == " " or board[index] == "" or board[index] == nil
    return false 
  else
    return true
  end
end

def input_to_index(input)
  input.to_i-1
end

def move(board, index, char='X')
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip 
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "Please make a valid selection"
    turn(board)
  end
end


