def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  converted_input = "#{user_input}".to_i 
  return converted_input - 1
end 

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else if board[index] == "X" || board[index] == "O"
    return true 
   end
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == false
     return true
  else if index.between?(0, 8) == false && position_taken?(board, index) == true
    return false
   end
  end
end
def move(board, index, char = "X")
       board[index] = char
end

def turn(board)
  loop do
  puts "Please enter 1-9:"
  move = input_to_index(gets.strip)
 if valid_move?(board, move) == true 
   move(board, move, char = "X")
   display_board(board)
   break
 end
 end
end