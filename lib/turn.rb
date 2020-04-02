

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  puts "-----------"
end

def valid_move?(board, index)
  if(position_taken?(board, index) || index >10 || index < 0)
    return false
  end
  return true
end

def position_taken?(borad, index)
  if(borad[index] == " " || borad[index] == "" || borad[index] == nil)
    return false
  else
    return true
  end
end

def move(board, index, ch = "X")
  board[index] = ch
end

def turn(board)
   puts "Please enter 1-9:"
   input = gets.chomp
   index = input_to_index(input)
   if (valid_move?(board,index))
     move(board,index)
   else
     turn(board)
   end
   display_board(board)
end

def input_to_index(num)
  return num.to_i - 1
end
