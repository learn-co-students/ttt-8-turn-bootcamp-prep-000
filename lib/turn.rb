def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1 
end

def position_taken?(board, i)
  if board[i] == " " || board[i] == "" || board[i] == nil 
    true 
  end
end

def valid_move?(board, i)
  if i.between?(0, 8) && position_taken?(board, i)
    true 
  end 
end


def move(board, i, token = "X")
  board[i] = token 
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  # recursion passes the tests, but at first when I start the CLI myself and enter an invalid input one or more times followed by something valid, the board is printed multiple times. I assume this has something to do with working down the call stack. I realized this could be fixed by switching the order of validation, but this possible mistake isn't made clear in the lesson and requires a good deal more external knowledge. Maybe don't bring up recursion without expaining the call stack.
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else 
    turn(board)
  end
end 

