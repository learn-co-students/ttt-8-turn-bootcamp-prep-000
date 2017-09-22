def display_board(move = board)
  puts " #{move[0]} | #{move[1]} | #{move[2]} "
  puts "-----------"
  puts " #{move[3]} | #{move[4]} | #{move[5]} "
  puts "-----------"
  puts " #{move[6]} | #{move[7]} | #{move[8]} "
end

def input_to_index(input)
  index=input.to_i - 1
end

def move(board, index, player="X")
  board[index] = player
end

def valid_move?(board,index)
if index.between?(0, 8) && !position_taken?(board,index)
  return true
else index > 9 || position_taken?(board,index)
  return nil
end
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else board[index] == "X" || board[index] == "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board,index)
    display_board(board)
  else valid_move?(board, index) == false
    puts "Please enter 1-9:"
    input = gets.strip
end
end
