def turn(board, char='X')
  puts 'Please enter 1-9:'
  
  input = gets.strip
  index = input_to_index(input)
  
  if !valid_move?(board, index)
    return turn(board)
  end
  
  move(board, index, char)
  display_board(board)
  char = char == 'X' ? 'O' : 'X'
end

def display_board(board)
  line = 0

  5.times do |i|
    if i.odd?
      puts '-----------'
      next
    end

    board.slice(line * 3, 3).each_with_index do |piece, piece_index|
      print " #{piece} #{piece_index != 2 ? '|' : "\n"}"
    end

    line += 1
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, pos, char='X')
  board[pos] = char
end

def valid_move?(board, index)
  index >= 0 && index <= 9 && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != nil && board[index] != ' ' && !board[index].empty?
end