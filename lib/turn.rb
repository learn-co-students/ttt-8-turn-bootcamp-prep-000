def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def is_number? string
  true if Integer(string) rescue false
end

def input_to_index input
  retval = 0

  if is_number? input
    retval = input.to_i - 1
  else
    retval = -1
  end
end

def move(board, pos, chr='X')
  board[pos] = chr
end

def valid_move? (board, index)
  index > -1 && index < 8 && !position_taken?(board, index)
end

def position_taken? (board, index)
  reval = nil

  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    retval = false
  elsif (board[index] == "X") || (board[index] == "O")
    retval = true
  end
  retval
end

def turn board
  puts "Please enter 1-9:"
  is_valid_move = false
  while !is_valid_move do
    input = gets.strip
    index = input_to_index(input)
    is_valid_move = valid_move?(board, index)
  end
  move(board, index)
  display_board(board)
end
