
def display_board(board)
  3.times do |i|
    j = i * 3
    puts " #{board[j]} | #{board[j+1]} | #{board[j+2]} "
    if i < 2
      puts "-----------"
    end
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, player="X")
  board[index] = player
end

def position_taken?(board, index)
  cell = board[index]
  cell != " " && cell != "" && cell != nil
end

def valid_move?(board, index)
  if not index.between?(0, board.length-1)
    return false
  end
  not position_taken?(board, index)
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
