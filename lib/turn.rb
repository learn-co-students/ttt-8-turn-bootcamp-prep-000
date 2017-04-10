#loaded libraries from ttt-5 and ttt-7
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  return input - 1
end

def move(board, input, fill = "X")
  board[input] = fill
end 

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
    return true
  elsif position_taken?(board, index) 
    return false
  else
    return false 
  end 
end 

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
    return false
  else 
    return true 
  end 
end 

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board, index)
  else 
    puts "That is not a valid move"
    turn(board)
  end 
  display_board(board)
end 

