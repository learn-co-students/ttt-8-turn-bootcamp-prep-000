def turn(board)
    puts "Please enter 1-9:"
    user_input = input_to_index(gets.strip)
    if valid_move?(board, user_input) == true
        move(board, user_input, "X")
        display_board(board)
    else
      turn(board)
    end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] === "X" || board[index] === "O"
    return true
  else return false
  end
end

def valid_move?(board, index)
  valid = false
  within_range = false
  if index >= 0 && index <= 9
    within_range = true
  end
  if position_taken?(board, index) === false && within_range === true
    valid = true
  else valid = false
  end
  return valid
end

def input_to_index(n)
  n.to_i - 1
end

def move(board, index, key = "X")
  board[index] = key
  def update_array_at_with(array, index, value)
    array[index] = value
  end
end
