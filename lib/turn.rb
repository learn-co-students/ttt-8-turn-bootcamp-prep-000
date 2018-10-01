#ask for input
#get input
#convert input to index
#if index is valid
#  make the move for index
#  show the board
#else
#  ask for input again until you get a valid input
#end



#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(raw_input)
  raw_input = raw_input.to_i
  index = raw_input -= 1
end

#valid_move?
def valid_move?(board, index)
  if index.between?(0, 8)
    if (board[index] == " " || board[index] == "" || board[index] == nil)
      return true
    else
      return false
    end
  else
    return false
  end
end

#move
def move(board, index, token = "O")
  board[index] = token
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  raw_input = gets.strip
  index = input_to_index(raw_input)
  truth_value = valid_move?(board, index)
  if !(truth_value)
    puts "Come on, Nick, type the right number, Nick"
    turn(board)
  else
    move(board, index, token = "X")
  end
  display_board(board)
end

