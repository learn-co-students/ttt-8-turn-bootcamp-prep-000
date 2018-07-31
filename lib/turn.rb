def display_board(board)
  puts " #{board[0] } | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3] } | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6] } | #{board[7]} | #{board[8]} "
end

def input_to_index(givenNumber)
  (givenNumber.to_i-1)
end


def valid_move?(board,index)
  if((index.between?(0,8))&&(board[index])==" ")
    true
  else
    false
  end
end

def move(board,index,letter="X")
  board[index]=letter
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  until valid_move?(board,index)
   puts "Please enter 1-9:"
   number = gets.strip
   index = input_to_index(number)
  end
    move(board,index)
end
