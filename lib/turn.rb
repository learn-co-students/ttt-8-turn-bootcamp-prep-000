def position_taken?(board, index_number)
  if board[index_number] == "X" || board[index_number] == "O"
    return true 
  else
    return false
  end
end

def valid_move?(board, index_number)
  if index_number.between?(0, 8) == true && position_taken?(board, index_number) == false 
    return true 
  else
    return false
  end 
end 

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(users_input)
  users_input.to_i - 1
end

def win?(board)
  if (((board[0] && board[4] && board[8]) || (board[0] && board[1] && board[2]) || (board[0] && board[3] && board[6]) || (board[1] && board[4] && board[7]) || (board[2] && board[5] && board[8]) || (board[3] && board[4] && board[5]) || (board[6] && board[7] && board[8])) == "X") || (((board[0] && board[4] && board[8]) || (board[0] && board[1] && board[2]) || (board[0] && board[3] && board[6]) || (board[1] && board[4] && board[7]) || (board[2] && board[5] && board[8]) || (board[3] && board[4] && board[5]) || (board[6] && board[7] && board[8])) == "O")
    return false 
    puts "You Win!"
  else 
    return true 
  end
end 

def turn(board)
    puts "Please enter 1-9:"
    users_input = gets.strip
    index_number = input_to_index(users_input)
    if valid_move?(board, index_number)
      move(board, index_number, character = "X")
      display_board(board)
    else 
      turn(board)
  end 
end 


def move(board, index_number, character = "X")
  return board[index_number] = character
end