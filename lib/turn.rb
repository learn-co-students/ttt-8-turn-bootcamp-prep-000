LINE = "-----------"

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts LINE
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts LINE
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else 
    turn (board)
  end
end


def move(board, index, tic_or_tac = "X")
  board[index] = tic_or_tac
end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    true
  else
    false
  end
end
    
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end