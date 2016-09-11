def display_board(board)
  cell_separator = "|"
  row_separator = "-" * 11

  board.each.with_index {
    |cell, index| print  " #{cell} ", ((index + 1) % 3) == 0 &&
    index < board.length - 1 ? "\n#{row_separator}\n" :
    index < board.length - 1 ? "#{cell_separator}" : "\n"
  }
end

# code your #valid_move? method here
def valid_move?(board, index)
  return index.between?(0, board.length - 1) && !position_taken?(board, index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  return (board[index] == "X" || board[index] == "O")
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def move(board, position, value = "X")
  board[position] = value
  return board
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
      break
    end
  end
end
