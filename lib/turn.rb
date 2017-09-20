def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index < 0 || index > 8
    false
  elsif position_taken?(board, index)
    false
  else
    true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end

end

def input_to_index(input)
  input = input.to_i
  input = input - 1
end

def move(board, index, playerChar = "X")
  board[index] = playerChar
end

def update_array_at_with(array, index, value)
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end

end
