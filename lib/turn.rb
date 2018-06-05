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

=begin
### this is an alternative method, using a loop
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
=end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Determine if the move is valid -- did the user enter a number within the board's range, and was the position entered already taken?
def valid_move?(board, index)
  if index.between?(0,8) && !(position_taken?(board, index))
    return TRUE
  else
    return FALSE
  end
end

# was the position entered already taken?
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return FALSE
  elsif board[index] == "X" || board[index] == "O"
    return TRUE
  end
end

def move(board, index, player="X")
  board[index] = player
end

def input_to_index(input)
  input.to_i - 1
end