def turn(board)
  answer=nil
  until answer== true
    puts "Please enter 1-9:"
    input=gets.strip
    index=input_to_index(input)
    answer=valid_move?(board,index)
  end

  move(board,index,character="X")
  display_board(board)

end

def input_to_index(input)
  input. to_i - 1
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def move(board,index,character="X")
  board[index]=character
end

answer=nil
answer=nil

def valid_move?(board,index)

  if (index.between?(0,8))
    position_taken?(board,index)
  else answer=false
  end


end

def position_taken?(board,index)
  (board[index] ==  " " || board[index] == "" || board[index] == nil) ?
      true : false
end
