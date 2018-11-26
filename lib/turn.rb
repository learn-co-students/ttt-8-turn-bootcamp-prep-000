def display_board(board)
  divider = ''
  11.times { divider += '-' }

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts divider
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts divider
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(i)
  i.to_i-1
end

def valid_move?(board, i)
  i.between?(0, board.size-1) &&
    !(board[i] == 'X' || board[i] == 'O')
end

def move(board, i, char="X")
  board[i] = char
end

def turn(board)
  puts "Please enter 1-9:"
  i = input_to_index(gets.chomp)

  if valid_move?(board, i)
    move(board, i)
    display_board(board)
  else
    turn(board)
  end
end
