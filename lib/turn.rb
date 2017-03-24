def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(number)
  number.to_i-1
end

def valid_move?(board,index)
    index.between?(0,8) && !position_taken?(board,index)
end

def position_taken?(board,index)
  if board[index] ==" " || board[index]==nil || board[index]==""
    false
  else
    true
  end
end

def move(board,position,character="X")
  board[position]=character
end

def turn(board)
  puts "Please enter 1-9:"
  index=input_to_index(gets.strip)
  count=0
  counter=0;
  while counter<board.length
    if  board[counter] !=" "
      count+=1
    end
    counter+=1
  end
  if valid_move?(board,index)
    if(count%2==0)
      move(board,index,"X")
    else
      move(board,index,"O")
    end
  else     
    turn(board)
  end  
  display_board(board)
end