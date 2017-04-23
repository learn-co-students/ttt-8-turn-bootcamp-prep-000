def display_board(board)
  row_divider = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts row_divider
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts row_divider
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8)
    if position_taken?(board, index)
      return false
    else
      return true
    end
  else
    return false
  end
end

def input_to_index(user_input) 
  user_input.to_i - 1
end

def move(board, index, player = "X")
  return board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end