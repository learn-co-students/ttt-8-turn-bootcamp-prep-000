def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(val)
  val_num = val.to_i
  index = val_num - 1
  #return index
end

def move(board, index, player = "X")
  board[index] = player
end

def valid_move?(board, index)
  if index.between?(0, 8)
    if !position_taken?(board, index)
      return true
    end
    return false
  end
  return false
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
  return true
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == false
    turn(board)
  else move(board, index, player = "X")
  end
  display_board(board)
end