def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if valid_move?(board,index)
    move(board,index)
  else 
    turn(board)
  end
  display_board(board)
end 

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(number)
  index = number.to_i - 1 
  return index
end 

def move(board,index,value='X')
  board[index] = value
end 

def valid_move?(board,index)
  if index < 0 || index > 8
    false
  else
    if position_taken?(board,index) == false 
      true
    end
  end 
end

def position_taken?(board,index)
  index = index.to_i
  if board[index] == " " || board[index] == "" || board[index] == nil
    false 
  elsif board[index] == "X" || board[index] == "O"
    true 
  end 
end