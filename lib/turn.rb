#displays the current state of the tic-tac-toe board
def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

#converts user input to the index of the board array
def input_to_index(index)
  index = index.to_i
  return index -= 1
end

def index_range(index)
  if (index < 9 && index > -1)
    return true
  else
    return false
  end
end

#returns true if the move is valid and false otherwise
def valid_move?(board, index)
  avail = position_taken?(board, index)
  if (index_range(index) && !avail)
    return true
  else
    return false
  end
end

#returns true if the position on the board is taken and false otherwise
def position_taken?(board, index)
  if (board[index] == "X" || board[index] == "O")
    return true
  else
    return false
  end
end

#Puts an "X" (or "O") on the board
def move(board, index, token = "X")
  if valid_move?(board, index)
    board[index] = token
    return true
  else
    return false
  end
end


def turn(board)

    puts "Please enter 1-9:"
    index = gets.strip
    index = input_to_index(index)
    if (move(board, index))
      display_board(board)
    else
      turn(board)
    end

end
