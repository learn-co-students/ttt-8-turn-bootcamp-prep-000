def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index >= 0 && index <= 8 && !position_taken?(board, index)
    true
  end
end

def position_taken?(board, index)
  (board[index] ==  " " || board[index] == "" || board[index] == nil) ?
    false : true
end

def move(board, index, token = "X")
  board[index] = token
  display_board(board)
end

def input_to_index(input)
  input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)
  loop do
    if valid_move?(board, input)
      move(board, input)
      break;
    else
      puts "Please enter a valid move:"
      input = (gets.strip).to_i - 1
    end
  end
end
