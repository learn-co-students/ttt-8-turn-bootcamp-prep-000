def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    return false
  elsif (board[index] == "X") || (board[index] == "O")
    return true
  end
end

def valid_move?(board, index)
  if (index.between?(0, 8) == true) && (position_taken?(board,index) == false)
    return true
  else
    return false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-"*11
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-"*11
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i-1
  return input
end

def move(board_array, index, character = "X")
  board_array[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  
  move = false
    
  while move == false
    if valid_move?(board, input) == false
      puts "Position already defined. Where would you like to go?"
      input = gets.strip
      input = input_to_index(input)
    else
      move = true
      move(board, input)
      display_board(board)
    end
  end
end