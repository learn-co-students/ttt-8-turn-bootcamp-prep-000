def move(board, index, token = "X")
  board[index] = token
end

def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  if user_input.nil? || user_input.to_i.nil?
    -1
  end
  index = user_input.to_i - 1
  index
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " " || board[index] == "")
end

def valid_move?(board, index)
  if !board[index].nil? && index < 9 && index >= 0 && !position_taken?(board, index)
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board,index)
    move(board,index,token = "X")
    display_board(board)
  else
    turn(board)
  end
end
