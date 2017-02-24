def turn(board)
  input = get_move
  index = input_to_index(input)
  while valid_move?(board, index) == false
    puts "It is not possible to move to square #{input}"
    input = get_move
    index = input_to_index(input)
  end
  move(board, index)
  display_board(board)
end

def move(board, index, player = "X")
  board[index] = player
end

def display_board(cells)
  separator_row = "-----------"
  row1 = " #{cells[0]} | #{cells[1]} | #{cells[2]} "
  row2 = " #{cells[3]} | #{cells[4]} | #{cells[5]} "
  row3 = " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  puts "#{row1}\n#{separator_row}\n#{row2}\n#{separator_row}\n#{row3}"
end

def input_to_index(index)
  index = index.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) == true || position_on_board?(board, index) == false
    false
  else
    true
  end
end

def position_taken?(board, index)
  spot = board[index]
  if spot == " " || spot == "" || spot == nil
    false
  elsif spot == "X" || spot == "O"
    true
  end
end

def position_on_board?(board, index)
  if index >= 0 && index <= 8
    true
  else
    false
  end
end

def get_move
  puts "Please enter 1-9:"
  gets.strip
end
