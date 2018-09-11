def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  input.to_i - 1
end


def move(board, index, players_character="X")
  board[index] = "#{players_character}"
  return board
end  


def valid_move?(board, index)
  def position_taken?(board, index)
  ! (board[index] == "" || board[index] == " " || board[index] == nil)
  end  
  
  (index.between?(0,8) && !(position_taken?(board, index))) ? true : false
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, players_character = "X")
  else
    turn(board)
  end
  display_board(board)
  turn(board)
end