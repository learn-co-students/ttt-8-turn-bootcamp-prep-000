def valid_move?(board, idx)
  return true if (0..8).include?(idx) && !position_taken?(board, idx)
  false
end

def position_taken?(board, idx)	
  return true unless (board[idx] == " " || board[idx] == "" || board[idx] == nil)
  false
end

def input_to_index(number)
   number.to_i - 1
end

def move(board, idx, player = "X")
  board[idx] = player
  return board
end 

def display_board(board)
  separator = "-" * 11
  printed_board = board.map { |tile| " #{tile} " }
    .map.with_index { |tile, idx| idx % 3 === 1 ? "|#{tile}|" : tile }
    .map!.with_index { |tile, idx| [2,5].include?(idx) ? "#{tile}\n#{separator}\n" : tile }
    .join
  puts printed_board
end

def turn(board)
  puts "Please enter 1-9:"
  answer = gets.strip
  idx = input_to_index(answer)
  if valid_move?(board, idx)
    move(board, idx)
    display_board(board)
  else
    turn(board)
  end
end