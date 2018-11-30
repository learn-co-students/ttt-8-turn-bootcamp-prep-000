def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i-1
end

def valid_move?(board, index)
  if position_taken?(board, index) || !index.between?(0,8)
    return FALSE
  else
    return TRUE
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == NIL
    return FALSE
  else
    return TRUE
  end
end

def move(board, index, player)
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if !valid_move?(board, index)
    turn(board)
  else
    move(board, index, player="X")
  end
  
  display_board(board)
end