def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  return index.between?(0,8) && !position_taken?(board, index)
end


def position_taken?(board, index = 0)
  return board[index] == "X" || board[index] == "O"
end


def input_to_index(user_input)
  return user_input.to_i - 1 
end


def move(board, index, player = "X")
  return board[index] = player
end


def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)

  if(!valid_move?(board,index))
    turn(board)
  else
    move( board, index )
    display_board(board)
  end
end

