def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return  (input.to_i) - 1
end

def move(board, index, character='X')
  return board[index] = character
end

def valid_move?(board, index)
  if index >= 0 && index < 9
    if position_taken?(board, index) == false
      true
    end
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
   if valid_move?(board, index) == true
     move(board, index, "X")
     display_board(board)
  else
    turn(board)
  end
end
