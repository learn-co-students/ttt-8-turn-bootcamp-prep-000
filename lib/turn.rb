def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board,index) == false
      true
  else
      false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false
  else
    true
  end
end

def input_to_index(user_input)
index = (user_input.to_i)-1
end

def move (board, index, token = 'X')
 board[index] = token
end

def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == true
   move(board,index,token ="X")
   display_board(board)
  else
    puts "Hey that's not a valid entry!"
   input= gets.strip
   index = input_to_index(index)
 end
  index
end
  