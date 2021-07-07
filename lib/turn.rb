def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index input
  index = input.to_i - 1
  return index
end

def move array, index, value = "X"
  array[index] = value
end

def position_taken? board, index
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def valid_move? board, index
  if index.between?(0,8) && !position_taken?(board, index)
    return true
  else
    return false
  end  
end

def turn(board)
  valid = false
  until valid == true do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index input
    valid = valid_move? board, index
  end
  move board, index, input = "X"
  display_board board
end