def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  if user_input.to_i
    user_input.to_i - 1
  else
    -1
  end
end

def valid_move?(board, index)
  if (board[index] == " " || board[index] == "") && index.between?(0, 8)
    true
  else
    false
  end
end

# def select_char
#   puts "Select your char: 'X' or 'O'?"
#   char = gets.strip
#   if char == "X" || "O"
#     char
#   else
#     nil
#   end
# end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  # puts "Please enter 1-9:"
  # input = gets.strip
  # input_to_index(input)
  # while !valid_move?(board, input_to_index(input))
  #   puts "Please enter 1-9:"
  #   input = gets.strip
  #   input_to_index(input)
  # end
  #
  # move(board, input_to_index(input), char = "X")
  # display_board(board)

  # get input
  # convert input to index
  # if index is valid
  # make the move for input
  # else
  # ask for input again until you get a valid input
  # end
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
    def move(board, input, char = "X")
  else
    while !valid_move?(board, input_to_index(input))
      puts "Please enter 1-9:"
      input = gets.strip
      input_to_index(input)
    end
  end
end
