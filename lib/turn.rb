def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end

def position_taken?(board, index)
if board[index] == "" || board[index] == " "
  return FALSE
  elsif board[index] == NIL
  return FALSE
else
  return TRUE
end
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return FALSE
    elsif index.between?(0, 8)
      return TRUE
else
    end
end
  
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end