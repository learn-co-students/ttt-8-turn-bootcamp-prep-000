board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  position= user_input.to_i
  position-1
end

def move(board,index,char = "X")
  board[index] = char
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board,index)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || "O"
    true
  end
end


def turn(board)
  puts "Please enter 1-9:"
  index = gets.chomp
    index = input_to_index(index)
  if valid_move?(board, index)
    move(board,index,char = "X")
    display_board(board)
  else
    puts "That is an invalvid entry!"
    turn(board)
end
end
