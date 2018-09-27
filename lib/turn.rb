def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
    if index.between?(0,8) and !position_taken?(board, index)
      return true
    end
end

def position_taken?(board, index)
  board[index] != " " 
end

def input_to_index(index)
  index = index.to_i - 1
end

def move(board, index, player = "X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip.to_i
  index = input_to_index(index)
  
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end