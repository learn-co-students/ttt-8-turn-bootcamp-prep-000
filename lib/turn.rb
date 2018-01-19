def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  s = num.to_i - 1
  return s 
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
    false
  else board[index] == 'X' || board[index] == "O"
    true
  end
end



def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board,index) == false
    true 
  end
end

def move(board,input_to_index,pos = "X")
  board[input_to_index] = pos
end 


def turn(board)
  puts "Please enter 1-9:"
  s = input_to_index(gets.strip)
  if valid_move?(board,s) == true
    move(board,s,pos ="X")
    display_board(board)
  else
    turn(board)
  end
end
