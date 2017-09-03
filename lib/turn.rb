board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  position_taken?(board, index) == false && index.between?(0,8)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index_number)
  if board[index_number] == " " || board[index_number] == "" || board[index_number] == nil
    false
  elsif board[index_number] == "X" || board[index_number] == "O"
    true
  end
end

def input_to_index(input)
  board_position = input.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  converted_to_index = input_to_index(input)
  return_valid_move = valid_move?(board, converted_to_index)

  if return_valid_move #== true
    move(board, converted_to_index, value = "X")

  else
    turn(board)
    #puts "Por favor re-enter a number: 1-9:"

    #until return_valid_move == true
    #turn(input)
  end
  display_board(board)
end
