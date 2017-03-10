def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, char="X")
    display_board(board)
  else
    is_valid = false
    while !is_valid
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
      is_valid = valid_move?(board, index)
    end
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(i)
  i.to_i - 1
end

def move(board, position, char="X")
  board[position] = char
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] == "   " || board[index] == "X" || board[index] == "O"
end
