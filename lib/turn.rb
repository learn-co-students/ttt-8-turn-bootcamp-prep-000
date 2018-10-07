def display_board(b)
  puts" #{b[0]} | #{b[1]} | #{b[2]} "
  puts"-----------"
  puts" #{b[3]} | #{b[4]} | #{b[5]} "
  puts"-----------"
  puts" #{b[6]} | #{b[7]} | #{b[8]} "
end

def input_to_index(num)
  return num.to_i - 1
end

def valid_move?(board, index)
  return index.between?(0, board.size) && !position_taken?(board, index)
end

def position_taken?(board, index)
  spot = board[index]
  return !(spot == " " || spot == "" || !spot)
end

def move(board, index, char)
  board[index] = char
end

def get_char
  char = ""
  until char == "X" || char == "O"
    puts("Enter X or O: ")
    char = gets.strip.upcase
  end
  return char
end

def turn(board)
  puts("Please enter 1-9:")
  i = gets.strip
  index = input_to_index(i)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
  # if valid_move?(board, index)
  #   # char = get_char
  #   puts("Enter X or O: ")
  #   char = gets.strip.upcase
  #   move(board, index, char)
  # else
  #   puts("That number is taken, or outside the range. Try again.")
  # end

end
