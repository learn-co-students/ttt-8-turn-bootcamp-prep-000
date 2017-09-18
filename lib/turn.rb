def display_board(board)
  horiz = "-----------"

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "#{horiz}"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "#{horiz}"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input_int = input.to_i
  index = input_int - 1
end

def valid_move?(board, index)
  if !position_taken?(board, index)
    if index.between?(0,8)
      true
    else
      false
    end
  else
    false
  end
end

def position_taken?(board, index)
  !board[index] == " " || !board[index] == "" || !board[index] == nil
  board[index] == "X" || board[index] == "O"
end

def move(board, index, char="X")
  board[index] = char.upcase
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, char="X")
    display_board(board)
  else
    turn(board)
  end
end
