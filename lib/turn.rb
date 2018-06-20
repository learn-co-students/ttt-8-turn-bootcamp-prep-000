# method for displaying board
def display_board(board_arr)
  puts " #{board_arr[0]} | #{board_arr[1]} | #{board_arr[2]} "
  puts "\n-----------\n"
  puts " #{board_arr[3]} | #{board_arr[4]} | #{board_arr[5]} "
  puts "\n-----------\n"
  puts " #{board_arr[6]} | #{board_arr[7]} | #{board_arr[8]} "
  puts "\n"
end

# method for converting input into an index
def input_to_index(input_text)
  user_input = input_text.to_i
  user_input -= 1
  return user_input
end

# method returns true/false based on index
def valid_move?(board_arr, index)
  if index.between?(0, 8)
    if board_arr[index] == "" or board_arr[index] == " " or board_arr[index] == NIL
      return true
    end
  end
  puts "invalid"
  return false
end

# the move method
def move(board_arr, index, player = "X")
  board_arr[index] = player
end

# the turn method
def turn(board_arr)
  puts "Please enter 1-9:"
  user_input = input_to_index(gets.strip())
  if valid_move?(board_arr, user_input)
    move(board_arr, user_input)
    display_board(board_arr)
  else
    puts "invalid"
    turn(board_arr)
  end
end