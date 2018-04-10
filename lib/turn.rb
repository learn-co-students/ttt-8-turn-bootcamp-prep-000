def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
if position_taken?(board, index) == true
  return false
elsif index.between?(0,8) == false
  return false
elsif index.between?(0,8) == true && position_taken?(board,index) == false
  return true
end
end



def position_taken?(board, index)
if board[index] == " " || board[index] == "" || board[index] == nil
    return false

  elsif board[index] == "X" || board[index] ==  "O"
      return true
  end
end

def input_to_index(user_input)
  input_int = user_input.to_i
  index = input_int - 1
end

def move (board, index, token = "X")
  board[index] = token
end

def turn (board)
 puts "Please enter 1-9:"
user_move = gets.strip
user_index = input_to_index(user_move)
validity = valid_move?(board, user_index)
if validity
  move(board, user_index)
  display_board(board)
else
  turn(board)
end

end
