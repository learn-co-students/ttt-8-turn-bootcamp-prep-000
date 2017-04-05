def display_board(board)
  line = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board, index)
  if index <= 8 && index >= 0
    if !position_taken?(board, index)
      true
    end
  end
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

def position_taken?(board, index)
  taken = nil
  if board[index] == "" || board[index] == " " || board[index] == nil
    taken = false
  elsif board[index] == "X" || board[index] == "O"
    taken = true
  end
  taken
end

def move(board, index, char = "X")
    board[index] = char
end
