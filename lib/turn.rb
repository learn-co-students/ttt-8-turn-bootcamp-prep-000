def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index=input_to_index(input)
  move(board, index)
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if(index.between?(0,8))
    if( (board[index]==" ") || (board[index].to_s.empty?) || (board[index].nil?))
      return TRUE
    end
  end
  return false
end

def move(board, index, player="X")
  if(valid_move?(board,index))
    board[index]=player
    return board
  end
  turn(board)
  #display_board(board)
end

def input_to_index(input)
  input=input.to_i
  index=input-1
  return index
end