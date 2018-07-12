def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def input_to_index(stringMove)
  index = stringMove.to_i - 1
end

def move(board, index, character="X")
  board[index] = character
  return board
end

def valid_move?(board, index)
  if index.between?(0,8)
    if position_taken?(board, index)
      return FALSE
    else
      return TRUE
    end
  else
    return FALSE
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == NIL
    return FALSE
  else
    return TRUE
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == TRUE
      board = move(board, index, "X")
      display_board(board)
    else
      turn(board)
    end
end
