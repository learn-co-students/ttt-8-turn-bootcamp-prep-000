def turn(board=Array.new(9," "))
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board, index)
    puts "Not a Valid move! Please try again.\n"
    turn(board)
    return
  else
    move(board, index)
    display_board(board)
  end
end

def display_board(board)
    cell = "   "
    row1 = " #{board[0]} | #{board[1]} | #{board[2]} \n"
    sep = "-----------\n"
    row2 = " #{board[3]} | #{board[4]} | #{board[5]} \n"
    row3 = " #{board[6]} | #{board[7]} | #{board[8]} "
    board = row1 + sep + row2 + sep + row3
    puts board
end

def input_to_index(input)
  return input.to_i - 1
end

def valid_move?(board, index)
  return !position_taken?(board, index) && index >= 0
end

def position_taken?(board, index)
  return !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def move(board, index, char="X")
  board[index] = char
  return board
end
