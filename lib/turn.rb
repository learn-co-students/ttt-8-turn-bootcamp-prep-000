def input_to_index(s)
  return (s.to_i)-1
end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board,n)
  return n>=0&&n<9&&board[n]!='X'&&board[n]!='O'
end
def move(board,n,char="X")
  board[n]=char
  return board
end

def turn(board)
  i=-1
  puts("Please enter 1-9:")
  loop do
    if valid_move?(board,i=input_to_index(gets))
      break
    end
    puts("Invalid move.")
  end
  move(board,i)
  display_board(board)
  return board
end
