def display_board(array)
 puts " #{array[0]} | #{array[1]} | #{array[2]} "
 puts "-----------"
 puts " #{array[3]} | #{array[4]} | #{array[5]} "
 puts "-----------"
 puts " #{array[6]} | #{array[7]} | #{array[8]} "
end


def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index) 
  end
  
  def input_to_index(user_input)
  user_input.to_i - 1
  end
  
  def position_taken?(board, index)
  board[index] == "" || board[index] == " " || board[index] == nil ? false : true
end

def move(board, index, current_player = "X")
  board[index] = current_player
end
  
  def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end






  


