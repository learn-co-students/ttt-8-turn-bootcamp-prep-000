def display_board(board)
  board_view = ""
  board_view += " #{board[0]} | #{board[1]} | #{board[2]} \n"
  board_view += "-----------\n"
  board_view += " #{board[3]} | #{board[4]} | #{board[5]} \n"
  board_view += "-----------\n"
  board_view += " #{board[6]} | #{board[7]} | #{board[8]} \n"
  puts board_view
end

# -----------------------------------------------------------------

def valid_move?(board, index)
  if(!index.between?(0,8) || position_taken?(board, index))
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  if(board[index] == " " || board[index] == "" || board[index] == nil)
    return false;
  else
    return true;
  end
end

# -----------------------------------------------------------------

def input_to_index(input)
  index = input.to_i - 1;
end

def move(board, index, player="X")
  board[index] = player
end

# -----------------------------------------------------------------

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
  if(valid_move?(board, index))
    move(board, index)
    display_board(board)
  else
    puts "Invalid input. Please try again."
    turn(board)
  end
end
