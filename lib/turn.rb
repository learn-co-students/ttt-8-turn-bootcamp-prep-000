# code your #valid_move? method here



# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(array, index_number)
  if array[index_number] == "X"
    return true
  elsif array[index_number] == "O"
    return true
  elsif array[index_number] == " "
    return false
  elsif array[index_number] == ""
    return false
  elsif array[index_number] == nil
    return false
  else
    return nil
  end
end

def valid_move? (board, index)
  if position_taken?(board, index) == true
    return false
  elsif index > 8 || index < 0
    return false
  else
    return true
end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index (input)
  input.to_i - 1
end

def move (board, index, value = "X")
  board[index] = value
  return board
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip.to_i
    board_index = input_to_index(user_input)
    if valid_move?(board, board_index)
      move(board, board_index)
      display_board(board)
      #turn(board)
    else
      #puts "that move is invalid, yo"
      turn(board)
    end
end
