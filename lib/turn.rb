def display_board(board) # ["X", "O", " ", " ", " ", " ", " ", " ", " "]
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end

def position_taken? (board, index)
  board[index] == "X" || board[index] == "O"
end

def input_to_index(cell_num)
  cell_int = cell_num.to_i
  i = cell_int - 1
end

def move(board, i, token="X")
  board[i] = token
end

def turn(board)
  puts "Please enter 1-9:"
  cell_num = gets.strip
  index = input_to_index(cell_num)
  if valid_move?( board, index) == true
    move(board, index, token = "X")
  else
    turn(board)
  end
  puts display_board(board)
end