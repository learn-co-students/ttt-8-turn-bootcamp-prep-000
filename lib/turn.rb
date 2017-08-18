def display_board(array)
 board = " #{array[0]} | #{array[1]} | #{array[2]} \n-----------\n #{array[3]} | #{array[4]} | #{array[5]} \n-----------\n #{array[6]} | #{array[7]} | #{array[8]} \n"
 puts board
end

def input_to_index(guess)
  guess_int = guess.to_i
  if guess_int > 0
    guess_int = guess_int - 1
  else
    guess_int = -1
  end

  return guess_int
end

def move(board, position, mark = "X")
  board[position] = mark
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end

end


def valid_move?(board, index)
  if index < 0 || index > 9
    return false
  elsif position_taken?(board, index) == true
      return false
  elsif position_taken?(board, index) == false
      return true
  end
end

def turn(board)
puts "Please enter 1-9:"
move = gets.strip
num_move = input_to_index(move)
  if valid_move?(board, num_move)
    move(board, num_move, "X")
  else
    puts "Please enter 1-9:\n"
    new_move = gets.chomp
  end
  display_board(board)
end
