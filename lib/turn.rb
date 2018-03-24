def display_board (board)
  idx = 0
  
  while idx < board.size
    puts " #{board[idx]} | #{board[idx + 1]} | #{board[idx + 2]} "
    if idx < 6
      puts "-----------"
    end
    idx += 3
  end
end

def input_to_index (idx)
  idx.to_i - 1
end

def position_taken? (board, idx)
  if board[idx] == "X" || board[idx] == "O"
    return true
  end
  false
end

def valid_move? (board, idx)
  if idx > -1 && idx < 9
    if !position_taken?(board, idx)
      return true
    end
  end
  false
end

def move (board, idx, token = "X")
    board[idx] = token
end

def get_input
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
end

def turn(board)
  input = get_input
  while !valid_move?(board, input)
    input = get_input
  end
  move(board, input)
  display_board(board)
end

