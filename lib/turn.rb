def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i
  index -= 1
end

def valid_move?(board,index)
  if index.between?(0,8) && board[index] == " "
    return true
  else
    return false
  end
end      

def move(board,index,fill="X")
  board[index]=fill
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  x=valid_move?(board,index)
  until x == true do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    x=valid_move?(board,index)
  end
  
  if x == true
    move(board,index,fill="X")
  end
  
  p display_board(board)
  
end
