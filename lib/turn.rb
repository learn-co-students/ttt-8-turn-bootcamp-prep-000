
board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

puts "Where would you like to move? Please pick a number 1-9."
# user_input = gets.strip

index = 0
def input_to_index(user_input)
   index = user_input.to_i
   index -= 1
   return index
  end

def move(board, index, character = "X")
board[index] = character
end

def position_taken?(board,index)
  if board[index] == "" || board[index] == " "
    return false
  else
    return true
  end
end

def valid_move?(board,index)
  if position_taken?(board,index) == false && index.between?(
    0,board.length
    )
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  display_board(board)
  user_input=gets.strip
  index = input_to_index(user_input)

  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end
