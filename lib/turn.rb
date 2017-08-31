def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
if (board[index] == " " || board[index] == "" || board[index] == nil)
  taken = false
else (board[index] == "X" || board[index] == "O")
  taken = true
end
end

def move(board, index, value = "X")
  board[index] = value
end

def input_to_index(number)
  number.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  n = gets.strip
  index = input_to_index(n)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end


end
