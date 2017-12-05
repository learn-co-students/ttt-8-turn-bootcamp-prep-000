def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n"
  puts "-----------\n"
  puts " #{board[3]} | #{board[4]} | #{board[5]} \n"
  puts "-----------\n"
  puts " #{board[6]} | #{board[7]} | #{board[8]} \n"
end
def valid_move? (board, index)
  if index < 9 && index >= 0 && !position_taken?(board,index)
    return TRUE
  else
    return FALSE
  end
end

def position_taken? (board, index)
  if board[index] == "X" || board[index] == "O"
    return TRUE
  else
    return FALSE
  end
end

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def move (board, index, player = "X")
  board[index] = player
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
  if valid_move?(board,index)
    move(board, index)
    display_board(board)
  else 
    turn(board)
  end
  
end