def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  index = num.to_i - 1
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
    false
  else 
    true
  end
end

def move(board, index, value = "X")
  if valid_move?(board, index)
    board[index] = value 
  end 
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if index >= 0 && index < board.length
    # puts "Please enter either X or O"
    move(board, index)
    display_board(board)
  else 
    turn(board)
  end
  input
end