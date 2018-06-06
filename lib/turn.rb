def display_board(arr)
  puts " #{arr[0]} | #{arr[1]} | #{arr[2]} "
  puts "-----------"
  puts " #{arr[3]} | #{arr[4]} | #{arr[5]} "
  puts "-----------"
  puts " #{arr[6]} | #{arr[7]} | #{arr[8]} "
end

def input_to_index(input)
  input[0].to_i - 1
end

def move(arr, index, character = "X")
  arr[index] = character
end

# code your #valid_move? method here
def valid_move?(board, index)
  if !position_taken?(board, index) && index >= 0 && index <= 8
    return true
  end
  
  return false
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.split
  index = input_to_index(input)
  
  valid = valid_move?(board, index)
  
  while !valid
    puts "Please enter 1-9:"

    input = gets.split
    index = input_to_index(input)
    
    valid = valid_move?(board, index)
  end
  
  move(board, index)
  
  display_board(board)
end