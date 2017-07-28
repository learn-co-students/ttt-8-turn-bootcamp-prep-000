def turn(board)
  # Get input
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  # Check if it's a valid move
  if valid_move?(board, index)
    move(board, index)
  else
    until valid_move?(board, index)
      puts "That's not a valid move. Try entering a number from 1-9."
      puts "What's your move?"
      input = gets.strip
      index = input_to_index(input)
    end
  end

  display_board(board)
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, mark="X")
  board[index] = mark
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if (0<= index) && (index < 9) && !(position_taken?(board, index))
    return true
  else
    return false
  end
end

def position_taken?(array, index)
  if (array[index] == 'X' || array[index] == 'O')
    return true
  else
    return false
  end
end
