
# the turn method initiates the overall turn and calls the other methods

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)

  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)

  end
end

# checks whether the selected move can be made
def valid_move?(board, input)

  if input.between?(0,8) == false
    return false

  elsif input.between?(0,8) == true

    # we need to check if the position has been taken
    # if taken, invalid move and we return false
    if position_taken?(board, input) == true
      return false

    # if position not taken, the move is valid and we return true
    elsif position_taken?(board,input) == false
      return true

    # catch all other cases
    else
      return false

    end

  else
    return false
  end
end

# checks to see if an X or O exists in the selected position
def position_taken?(board, input)

  if board[input] == " "
    return false
  elsif board[input] == ""
    return false
  elsif board[input] == "X" || board[input] == "O"
    return true
  elsif board[input] == nil
    return false
  else
    return false
  end

end

def display_board(board)
  row_separator = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "#{row_separator}"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "#{row_separator}"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# converts input to an array index
def input_to_index(input)
  input = input.to_i
  input - 1

end

# adds the move to the board
def move(board, index, character="X")
  board[index] = character
end
