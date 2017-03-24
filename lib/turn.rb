def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input_int = input.to_i
  if(input_int <= 0)
    return -1
  end
  index = input_int - 1
  return index
end

def move(board, index, char = 'X')
  board[index] = char
  return board
end

def valid_move?(board, index)
  if(index.between?(0, 8))
    if (!position_taken?(board, index))
      return true
    end
  end
  return false
end

def position_taken?(board, index)
  if(board[index] == '' || board[index] == ' ' || board[index] == nil)
    return false
  end
  return true
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index_selected = input_to_index(input)
  if (!valid_move?(board, index_selected))
    puts "That is an invalid move, you can only choose 1-9 and cannot pick spot that has already been taken."
    display_board(board)
    turn(board)
  end
  board = move(board, index_selected)
  display_board(board)
end
