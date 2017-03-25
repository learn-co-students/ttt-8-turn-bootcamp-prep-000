def display_board(board)
  puts " #{board[0]} " "|" " #{board[1]} " "|" " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " "|" " #{board[4]} " "|" " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " "|" " #{board[7]} " "|" " #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " "
    false
  elsif board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif index > board.length - 1
    false
  elsif index >= 0
    true
  end
end

def move(board, index, character="X")
  board[index] = character
end

def input_to_index(input)
input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, character="X")
    display_board(board)
  else
    while valid_move?(board, index) != true
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    end
  end
end
