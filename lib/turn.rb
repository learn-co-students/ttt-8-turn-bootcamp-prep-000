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

def move(board, index, player = 'X')
  board[index] = player
end

def position_taken?(board, index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

def valid_move?(board, index)
  if (index.between?(0,9) && !position_taken?(board, index))
    true
  else
    false
  end
end

def turn(board)
  entry = -1
  loop do
    puts "Please enter 1-9:"
    entry = input_to_index(gets.strip)
    if valid_move?(board, entry)
      break
    end
  end
  move(board, entry)
  display_board(board)
end
