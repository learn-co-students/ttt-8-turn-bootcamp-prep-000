def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  if (input.to_i).between?(1,9)
      return (input.to_i - 1)
  else
      return -1
  end
end

# takes a board and integer index as arguments and returns
# false - if index is not between 0 and 8 or the space is taken
# true - otherwise
def valid_move?(board, index)
  if !index.between?(0,8)|| position_taken?(board, index)
    return false
  else
    return true
  end
end

# takes a board, index, and user token as arguments
# and puts user's token in the board at the index
def move(board, index, token="X")
  board[index] = token
end

# takes a board and index as arguments and returns
# false - if index space is nil or empty
#       - if the position is taken by an invalid character
# true - if the position is taken by an X or O
def position_taken?(board, index)
  if board[index] == nil || board[index].strip == ""
    return false
  end

  value = board[index].strip
  if value == "X" || value == "O"
    return true;
  else
    return false;
  end
end


# takes a board as an argument and
# executes a single turn. asks for and validates input
# and if invalid, asks until valid input is received
# displays updated board
def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)

    if valid_move?(board, index)
      move(board, index, "X")
      display_board(board)
      return
    else
      turn(board)
    end
end
