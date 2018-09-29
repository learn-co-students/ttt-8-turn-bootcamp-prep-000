def display_board(move)
  puts " #{move[0]} | #{move[1]} | #{move[2]} "
  puts "-----------"
  puts " #{move[3]} | #{move[4]} | #{move[5]} "
  puts "-----------"
  puts " #{move[6]} | #{move[7]} | #{move[8]} "
end

def input_to_index(user)
  user = user.to_i - 1
end

def valid_move?(array, index_number)
  if !position_taken?(array,index_number) && index_number.between?(0,8)
    return true
  else
    false
  end
end

def position_taken?(array, index_number)
  if array[index_number] == " " || array[index_number] == "" || array[index_number] == nil
     false
  else
     true
   end
end

def move(board, index, token="X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user = gets.chomp
  index = input_to_index(user)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end 

