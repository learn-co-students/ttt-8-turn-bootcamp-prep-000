def turn board
  puts "Please enter 1-9:"
  index = input_to_index gets.strip
  if valid_move? board, index
    move board, index
    display_board board
  else
    turn board
  end
end

def move board, index, shape = "X"
  board[index] = shape
end

def display_board b
  puts " #{b[0]} | #{b[1]} | #{b[2]} "
  puts "-----------------------------"
  puts " #{b[3]} | #{b[4]} | #{b[5]} "
  puts "-----------------------------"
  puts " #{b[6]} | #{b[7]} | #{b[8]} "
end

def input_to_index input
  input.to_i - 1
end

def valid_move? board, index
  val = board[index]
  index.between?(0, 8) && (val == " " || val == "" || val == nil)
end
