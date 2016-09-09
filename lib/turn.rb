def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, i)
  if (board[i] == "" || board[i] == " " || board[i] == nil)
    return false
  elsif (board[i] == "X" || board[i] == "O")
    return true
  end
end

def valid_move?(board, i)
  if(!position_taken?(board, i) && i.between?(0, 8))
    return true
  else
    return false
  end
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, i, token = "X")
  return board[i] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if (valid_move?(board, index))
    move(board, index)
    display_board(board)
  else
    puts "Invalid move. Try again."
    turn(board)
  end
end
