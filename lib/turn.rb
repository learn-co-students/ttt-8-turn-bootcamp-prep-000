def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
 if (!position_taken?(board, index) && index.between?(0,8))
   return true
 else
   return false
 end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return true
  end
end

def input_to_index(x)
  x.to_i - 1
end

def move(board, position, player = "X")
  def update_array_at_with(array, index, value)
    array[index] = value
  end
  update_array_at_with(board, position, player)
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  choice = gets.strip
  position = input_to_index(choice)
  if (!position_taken?(board, position) && valid_move?(board, position))
    move(board, position, player = "X")
    display_board(board)
  else
    turn(board)
  end
end
