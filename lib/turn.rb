def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8)
    board[index] ? board[index].strip == "" : false
  end
end

def move(board, index, token='X')
  board[index] = token
end

def input_to_index(index)
  index.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  
  user_input = input_to_index(gets.strip)
  
  if user_input == -1 or !valid_move?(board, user_input)
    turn(board)
  end
  
  move(board, user_input)
  display_board(board)
end