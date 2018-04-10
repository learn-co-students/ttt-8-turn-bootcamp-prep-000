def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i-1
  return index
end

def valid_move?(board, index)
  if index.between?(0,8) &! position_taken?(board, index)
    return true
  end
end

def move(board_array, index, value = "X")
  board_array[index] = value
  return board_array
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) != true
    puts "Invalide entry please try again."
    turn(board)
  else 
    move(board, index, value = "X")
  end
  display_board(board)
  
end

def position_taken?(board, index)
  
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"  
    return true
  end
end