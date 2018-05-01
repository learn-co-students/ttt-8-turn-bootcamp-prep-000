board= [" ", " ", " ", " ", " ", " ", " ", " ", " "]


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  index = input.to_i - 1
end



def move(array, index, value)
  array[index] = value
end  

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
     false
  elsif board[index] == "X" || board[index] == "O"
     true 
  end   
end  

def valid_move?(board, index)
  if position_taken?(board, index) 
    false
  elsif index.between?(0, 8) == false
    false
  else 
    true
  end  
end  

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, value = "X")
    display_board(board)
  elsif 
    turn(board)
  end
end  
