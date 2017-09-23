def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  index.between?(0, 8) && !position_taken?(board, index)
 #  (index <= 8 && index >= 0)
  # if index <= 8 && index >= 0
  #   if position_taken?(board,index) == true
  #     return false
  #   else
  #     return true
  #   end
  # end
  # if index > -1
  #   if index < board.length
  #     if position_taken?(board,index) == true
  #       return false
  #     elsif position_taken?(board,index) == false
  #       return true
  #     end
  #   else
  #     return false
  #   end
  # else
  #   return false
  # end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "O" || board[index] == "X"
    true
  end
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
  index
end

def move(board, index, move = "X")
  board[index] = move
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  input = input_to_index(input)
  if valid_move?(board,input) == false
    turn(board)
  else
    move(board,input)
  end
  display_board(board)
end
