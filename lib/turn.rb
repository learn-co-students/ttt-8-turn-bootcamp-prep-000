def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
if (index >= 0 && index < 9) && position_taken?(board, index)
  return true
else
  return false
end
end


def position_taken?(board, index_number)
  if (board[index_number] == " " || board[index_number] == "" || board[index_number] == nil)
    return true
  elsif board[index_number] == "X" || board[index_number] == "O"
    return false
  end
end

  def input_to_index(index)
  index = index.to_i
  index -=  1
end

def move (board, index, token = "X")
board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
 index = input_to_index(gets.strip)
if  valid_move?(board, index) == true
  move(board, index)
else
  turn(board)
end
display_board(board)
end
