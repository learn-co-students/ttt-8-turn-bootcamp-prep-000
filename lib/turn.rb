def valid_move?(board, index)
  index <= 8 && index >= 0 && !position_taken?(board, index)
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def display_board(board)
  line_break = "-"*11
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts line_break
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts line_break
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

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
