def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.chomp.strip)
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, i)
  if i.between?(0,8) && (board[i] == "" || board[i] == " ")
    TRUE
  else
    FALSE
  end
end

def move(board,i,token="X")
  board[i]=token
end

def input_to_index(i)
  i = i.to_i
  i = i - 1
end