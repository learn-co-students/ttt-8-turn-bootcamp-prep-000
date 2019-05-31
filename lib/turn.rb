def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  # Given input "1" - "9", convert to num 0 - 8
  position = input.to_i - 1
  return position
end

def position_taken?(board, index)
  if (board[index] === "X" || board[index] === "O")
    return true
  else
    return false
  end
end

def valid_move?(board, index)
  if ((index >= 0 && index <= 8) &&
      (board[index] == " " || board[index] == "") &&
      (!position_taken?(board, index)))
    return true
  else
    if (!(index >= 0 && index <= 8))
      puts "Enter a proper position 1 - 9"
    elsif (!(board[index] == " " || board[index] == "") || (position_taken?(board, index)))
      puts "Position taken. Make a new move"
    end
    return false
  end
end

def move(board, position, token = "X")
  # Outputs modified board array with char placed in specified position
  # index = input_to_index(position)
  index = position
  board[index] = token
  return board
end


def turn(board)
  puts "Welcome to Tic Tac Toe!"
  display_board(board)
  
  puts "Where would you like to go?"
  puts "Please enter 1-9:"
  
  input = gets.strip
  index = input_to_index(input)
  
  if ( valid_move?(board, index) )
    move(board, index)
    display_board(board)
  else
    puts "invalid"
    turn(board)
  end
  
end  

