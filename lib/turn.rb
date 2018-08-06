def turn(board)
  
  puts "Please enter 1-9:"
  
  board_position = gets.strip
  
  index = input_to_index(board_position)
  
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end


#helper methods
 
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(position)
  indexed_position = position.to_i
  return indexed_position - 1
end

def move(board, index, player_character="X")
  board[index] = player_character
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    true
  else
    false
  end    
end

def position_taken?(board, index)
  board[index] =='' || board[index] ==' '|| board[index] == nil
  board[index] =='X' || board[index] =='O'
end