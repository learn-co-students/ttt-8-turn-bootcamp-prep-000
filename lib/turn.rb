def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == nil || board[index] == "" || board[index] == " "
    false
  else
    true
  end
end

def valid_move?(board, index)
  if index >= 0 && index < 9
    if !position_taken?(board, index)
      true
    else
      false
    end
  else
    false
  end
end

def input_to_index(input)
  if input.to_i.to_s == input
    index = input.to_i - 1
  else
    index = -1
  end
end
  
def move(board, index, symbol = "X")
  board[index] = symbol
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board, index)
    turn(board)
  else
    move(board, index, "X")
  end
end