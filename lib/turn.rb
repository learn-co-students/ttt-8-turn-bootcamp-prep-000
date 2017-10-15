def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def position_taken?(board, index)
  if ((board[index] == "X") || (board[index] == "O"))
    return true
  elsif (board[index] == " ")
    return false
  else
    return false
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false
    if index>=0 && index<=8
      return true
    else
      return false
    end
  else
    return false
  end
end

def move(board, index, ch = "X")
  board[index] = ch
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
