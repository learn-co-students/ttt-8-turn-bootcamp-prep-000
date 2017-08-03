=begin
def turn(board)
  puts "Please enter 1-9:"
  enter = gets.chomp.to_i
  enter =input_to_index(enter)
  if valid_move?(board,enter) == true
    move(board, enter)
    display_board(board)
  else
    turn(board)
  end
end
=end

def turn(board)
  puts "Please enter 1-9:"
  enter = gets.chomp.to_i
  enter = input_to_index(enter)
  while valid_move?(board,enter) == false
    puts "Please enter 1-9:"
    enter = gets.chomp.to_i
    enter= input_to_index(enter)
  end
  move(board,enter)
  display_board(board)
end
#a loop

def input_to_index(index)
  input = index.to_i - 1
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  taken = position_taken?(board,index)
  if taken == false && index.between?(0,8)
    return true
  else
    return false
  end
end

def position_taken?(board,index)
  input = board[index]
  if input == "X" || input == "O"
    return true
  else
    return false
  end
end

def move(board,index,input="X")
  board[index]= input
end
