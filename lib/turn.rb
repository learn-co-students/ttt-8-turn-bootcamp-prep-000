
def turn(board)
  request_num = "Please enter 1-9:"
  valid_response = false
  while valid_response == false do
    puts request_num
    input = gets.strip
    index = input_to_index(input)
    if !position_taken?(board, index)
      valid_response = true
      move(board, index, "X")
    else
      valid_response = false
    end
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
  
def input_to_index(pos)
  index = (pos.to_i) - 1
  return index
end
  
def valid_move?(board, index)
  if !index.between?(0,8)
    return false
  elsif board[index] == "X" || board[index] == "O" || board[index] == nil
    return false
  else
    return true
  end   
end

def position_taken?(board, index)
  if valid_move?(board, index)
    return false
  else
    return true
  end
end

def move(board, index, player="X")
  board[index] = player
  display_board(board)
end
