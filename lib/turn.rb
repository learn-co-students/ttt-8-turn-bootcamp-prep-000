
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board,index)
    turn(board) #recursive solution implemented, iterative is below
    # until valid_move?(board,index)
    # puts "Please enter 1-9:"
    # input = gets.strip
    # index = input_to_index(input)
    #end
  else 
    move(board, index)
    display_board(board)
end
end

def valid_move?(board_array,position)
  if position.between?(0,8) && !position_taken?(board_array, position) 
    true
  else
    nil
  end
end
  

def position_taken?(board_array, position)
  if board_array[position] == "" || board_array[position] == " " || board_array[position] == nil
    false
  elsif board_array[position] == "X" or board_array[position] == "O"
    true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(string)
  string.to_i - 1
end

def move(board_array,position,char="X")
  board_array[position] = char 
end
