def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  if input.is_a? String
    input.chomp.to_i - 1
  else
    input - 1
  end
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, position)
  board[position] == 'X' || board[position] == 'O'
end

def move(board, index, token='X')
  board[index] = token
end

def turn(board)
  puts 'Please enter 1-9:'
  index = input_to_index(gets)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end

end
