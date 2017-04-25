def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  key = input_to_index(gets.strip)

  if(valid_move?(board, key))
    move(board, key)
    display_board(board)
  else
    puts "That is not a number between 1-9"
    turn(board)
  end
end

def input_to_index(input)
  return input.to_i - 1
end

def valid_move?(board, index)
  if index < 0 || index > 8
    return false
  elsif position_taken?(board, index) == true
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

def move(board, index, key = "X")
  board[index] = key
end