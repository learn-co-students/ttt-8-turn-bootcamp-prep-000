def display_board(board)
  row_count = board.count / 3

  row_count.times do |row_idx|
    row_offset = row_idx * row_count
    puts " #{board[row_offset]} | #{board[row_offset + 1]} | "\
      "#{board[row_offset + 2]} "
    puts "#{'-' * (row_count * 4 - 1)}\n" unless row_idx == row_count - 1
  end
end

def input_to_index(input)
  index = input.to_i
  index.to_s == input ? index - 1 : -1
end

def valid_move?(board, index)
  index.between?(0, board.count - 1) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != " "
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
