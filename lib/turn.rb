def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(idx)
  new_idx = idx.to_i - 1
  new_idx
end

def move(array, idx, move="X")
  array[idx] = move
end

def position_taken?(array, idx)
  if array[idx] == " " || array[idx] == "" || array[idx] == nil
    false
  else
    true
  end
end

def valid_move?(array, idx)
  if idx.between?(0, 8) && position_taken?(array, idx) == false
    true
  elsif idx.between?(0, 8) == false
    false
  elsif position_taken?(array, idx) == true
    false
  end
end

def turn(array)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(array, index) && (position_taken?(array, index) == false)
    move(array, index)
    display_board(array)
  else
    turn(array)
  end
end
