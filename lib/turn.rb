board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
   index.between?(0, 8) && !(position_taken?(board, index))
  end
  
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end 

def input_to_index(number)
  convert_input = number.to_i
  convert_input -1
end 
 
def move(board, index, value = "X")
  board[index] = value 
end 

def turn(board)
  puts "Please enter 1-9:"
    index = gets.strip.chomp
    index = input_to_index(index)
  if valid_move?(board, index)
      puts move(board, index)
      puts display_board(board)
  else 
    puts "Invalidate move please enter 1-9:"
    turn(board) 
  end   
end 

