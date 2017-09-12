def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  return (index >= 0 && index < board.length) && !position_taken?(board,index)
end

def position_taken?(board,index)
  return !( board[index] == " " || board[index] == "" || board[index] == nil )
end

def move(board,index,xo="X")
  board[index] = xo
end

def input_to_index(input)
  return input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    puts "That is not a valid move."
    turn(board)
  end
end
