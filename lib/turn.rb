def display_board(arr=[" "]*9)
  puts " #{arr[0]} | #{arr[1]} | #{arr[2]} "
  puts "-----------"
  puts " #{arr[3]} | #{arr[4]} | #{arr[5]} "
  puts "-----------"
  puts " #{arr[6]} | #{arr[7]} | #{arr[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def move(array, index, value='X')
  array[index] = value
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif index.between?(0,8)
    return true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index)
    return display_board(board)
  else
    return turn(board)
  end
end
