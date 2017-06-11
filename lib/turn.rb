def display_board(board)
     puts " #{board[0]} " "|" " #{board[1]} " "|" " #{board[2]} "
     puts                      "-----------"
     puts " #{board[3]} " "|" " #{board[4]} " "|" " #{board[5]} "
     puts                      "-----------"
     puts " #{board[6]} " "|" " #{board[7]} " "|" " #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move?(board, index)
  (!position_taken?(board, index) && index.between?(0, 8)) ?
   true : false
end

def position_taken?(board, index)
  (board[index] == "" ||   board[index] == " " ||  board[index] == nil ) ?
   false : true
end

def move(board, user_input, value = "X")
  return board[user_input] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip

  index = input_to_index(user_input)

  if valid_move?(board, index) == true
    move(board, index, value = "X")
  else
    turn(board)
  end
  puts display_board(board)
end
