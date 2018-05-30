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
  # recursion passes the tests in general, but at first when I started the CLI myself and entered an invalid input one or more times followed by something valid, the board was printed multiple times. I realized this was because i was forgetting that recursively calling a function doesn't just terminate its current call stack instance without carrying out the following code (that in my case wasn't inside an "else" statement but just within the main method block after the "if invalid, recurse" statement), but this possible mistake isn't made clear in the lesson and requires external knowledge. Maybe don't say to use recursion without expaining the call stack, or otherwise just explicitly say what you can and can't do.
  
  # here's the dumb thing I did at first:
  
#  if !valid_move?(board, index)
#    turn(board)
#  end 
#  move(board index)
#  display_board(board)
#end

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else 
    turn(board)
  end
end 

