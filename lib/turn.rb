def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, input, char = "X")
  board[input] = char
  return board
end

def position_taken?(board, n)
  if board[n] == "" || board[n] == " " || board[n] == nil
    false
  elsif board[n] == "X" || board[n] == "O"
    true
  end
end

def valid_move?(board, n)
  return !position_taken?(board, n) && n <= 8 && n >= 0
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  choise = input_to_index(num)
  if valid_move?(board, choise)
    move(board, choise)
    display_board(board)
  else
    turn(board)
  end
end
