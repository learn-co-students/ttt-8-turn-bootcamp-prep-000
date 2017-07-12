def input_to_index(input)
  index = input.to_i
  index = index - 1
  return index
end

def position_taken?(array, index)
  if array[index] == " "
    return false
  elsif array[index] == ""
    return false
  elsif array[index] == nil
    return false
  elsif array[index] == "X" || array[index] == "O"
    return true
  end
end

def valid_move?(array, index)
  if index.between?(0, 8) && position_taken?(array, index) == false
    return true
  else
    return false
  end
end

def move(board, index, character = "X")
  board[index] = character
  return board
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    puts("Please enter a valid number")
    turn(board)
  end
end
