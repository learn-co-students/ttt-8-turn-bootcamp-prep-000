def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
  move(board, index, value="X")
  display_board(board)
else
  turn(board)
end
end

def display_board(cell = String.new("   "))
  puts " #{cell[0]} | #{cell[1]} | #{cell[2]} "
  puts "-----------"
  puts " #{cell[3]} | #{cell[4]} | #{cell[5]} "
  puts "-----------"
  puts " #{cell[6]} | #{cell[7]} | #{cell[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif index.between?(0, 8)
    return true
  else
    return false
  end

end

def position_taken?(board, index)
  if board[index] == "X"
    return true
  elsif board[index] == "O"
    return true
  else board[index] == " " || ""
    return false
  end
end


def move(board, index, value="X")
    board[index] = value
    value = "X"
end


def input_to_index(input)
  input.to_i - 1
end
