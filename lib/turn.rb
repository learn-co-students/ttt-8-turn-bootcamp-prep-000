def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
  input
end

def valid_move?(board, index)
  if index == [0]
    return true 
  end
  if index == [4]
    return true 
  end 
  if index == [-1]
    return false
  end
end