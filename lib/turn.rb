def turn(board)
  puts "Please enter 1-9:"
  spot = gets.strip
  spot = input_to_index(spot)
  if valid_move?(board, spot)
    move(board, spot)
    display_board(board)
  else
    puts "Try again!"
    turn(board)
  end
end

def display_board(arr)
  puts " #{arr[0]} | #{arr[1]} | #{arr[2]} "
  puts "-----------"
  puts " #{arr[3]} | #{arr[4]} | #{arr[5]} "
  puts "-----------"
  puts " #{arr[6]} | #{arr[7]} | #{arr[8]} "
end

def valid_move? (board, index)
  return true if 0 <= index && index <= 8 && !position_taken?(board, index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, index)
  if board[index] == ""
    return false
  elsif board[index] == " "
    return false
  elsif board[index] == nil
    return false
  else return true
  end
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input -= 1
end

def move(arr, spot, team = "X")
  arr[spot] = team
end
