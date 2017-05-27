def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i-1

end

def move(board,position,char = "X")
  board[position] = char
end

def position_taken?(board,index)
  if board[index] == ""
    false
  elsif board[index] == " "
    false
  elsif board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board,index)
  if index.to_i.between?(1,9) && !position_taken?(board,index)
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  loop do
  index = 0
  if index < 9 || index > 0
    break
  end
end
end
