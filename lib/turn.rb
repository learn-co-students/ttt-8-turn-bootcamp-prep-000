def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(array, index)
  if index.between?(0,8) && array[index] == " "
    return true
    else
      return false
  end
end

def move(array, index, character = "X")
  array[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index, "X")
    display_board(board)
  else
     puts "Please enter 1-9:"
     num = gets.strip
  end
end