def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def init_board(board)
  initVal = " "
  for i in 0..8 do
    board << initVal
  end
end

def input_to_index(move)
  array_location = move.to_i - 1
  if array_location < 0 || array_location > 8
    return -1
  end
  return array_location
end

def move(board,index,player = "X")
  board[index] = player
  return board
end

def valid_move?(board, index)
  return index.between?(0, board.length - 1) && !position_taken?(board, index)
end


def position_taken?(board, index)
  return !(board[index] == "" || board[index] == " " || board[index] == nil)
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets()
  index = input_to_index(user_input.strip)
  if valid_move?(board,index)
    display_board(move(board,index))
  else
    puts "Invalid Input"
    turn(board)
  end
end 
