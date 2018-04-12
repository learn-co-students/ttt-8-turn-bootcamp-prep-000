def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board, index)
  if index.between?(0, 8)
    if position_taken?(board, index)
      return false
    else
      return true
    end
  else
    return nil
  end
end
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end
def input_to_index(index)
  index_i = index.to_i - 1
  return index_i
end

def move(board, index, character="X")
  board[index] = character
  return board
end
def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index_i = input_to_index(index)
  if index_i != -1 and valid_move?(board, index_i)
    move(board, index_i, "X")
  else
    until index_i != -1 
      puts "Please enter 1-9"
      index = gets.strip
      index_i = input_to_index(index)
    end
    move(board, index_i, "X")
  end
  display_board(board)
end