def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index index
  index = index.to_i
  return index - 1
end

def move board, index, player_sign = "X"
  return board[index] = player_sign
end
# code your #valid_move? method here
def valid_move? board, index
  if position_taken? board, index
    return false
  else
    return true
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? board, index
  if index > 8 || index < 0
    return true
  elsif board[index] == " "
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def turn board
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index index
  output = valid_move? board, index
  if output == true
    board[index] = "X"
  else
    puts "Please enter 1-9:"
    index = gets.strip
    index = input_to_index index
    output = valid_move? board, index
  end
  display_board board
end
