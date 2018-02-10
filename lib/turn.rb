def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Player take turn method
def turn(board)
  puts "Please enter 1-9:"
  user_choice = gets
  position = input_to_index(user_choice)
  
  #check if user input is valid, keep asking until valid input recieved
  if !valid_move?(board, position)
    turn(board)
  end
  
  move(board, position)
  
  display_board(board)
end

# code your input_to_index and move method here!
def input_to_index(position)
  index = position.to_i  
  return index - 1
end

def move(board, position, character = "X")
  board[position] = character
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return TRUE
  elsif !index.between?(0,8)
    return FALSE
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return TRUE
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    return FALSE
  end
end