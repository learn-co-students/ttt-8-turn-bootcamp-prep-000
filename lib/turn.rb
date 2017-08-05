def turn(board)
  index = nil
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)

    if valid_move?(board, index)
      break
    end
  end
  move(board, index)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (!position_taken?(board, index) && index >= 0 && index < board.length)
    true
  else
    false
  end
end

def move(board, index, player_char = "X")
  board[index] = player_char
  display_board(board)
end

def input_to_index(input)
  index = input.to_i - 1
  index
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def blank_board
  board = []
  while board.length < 9
    board.push(" ")
  end
  board
end
