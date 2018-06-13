def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board, index, current_player = "X")
 board[index] = current_player
end

def position_taken?(board, index)
    if board[index] == "X" || board[index] ==  "O"
      true
    elsif board[index] == " " || board[index] == "" || board[index] == nil
      false
    end
  end

def valid_move?(board, index)
if position_taken?(board, index) == false && (index).between?(0, 8)
  return true
else return false
end
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
until valid_move?(board, index) == true
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
end
move(board, index, character = "X")
display_board(board)
end

#INPUT VS INDEX ISSUES
#INPUT = INPUT-1
#INDEX = []?
