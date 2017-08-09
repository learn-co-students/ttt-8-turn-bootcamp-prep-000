def display_board(board)
  row = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts row
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts row
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(space)
  num = (space.to_i) - 1
  return num
end

def position_open?(board, space)
  if (board[space] == nil || board[space] == "" || board[space] == " ")
    return true
  else
    return false
  end
end

def valid_move?(board, space)
  if (space < 0 || space > 8)
    return false
  elsif(position_open?(board, space))
    return true
  else
    return false
  end
end

def move(board, space, mark = "X")
    board[space] = mark
end


def turn(board)
  puts "Please enter 1-9:"
  choice = gets
  choice = input_to_index(choice)
  if(!(valid_move?(board, choice)))
    puts "Invalid move!"
    turn(board)
  else
    move(board,choice)
    display_board(board)
  end
end
