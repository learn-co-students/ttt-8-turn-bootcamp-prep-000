def display_board(board)
  separator = ""

  11.times do
    separator += "-"
  end

  counter = 0
  index = 0
  until counter == 5
    counter += 1
    if counter % 2 == 0
      puts separator
    else
      puts " #{board[index]} | #{board[index += 1]} | #{board[index += 1]} "
      index += 1
    end
  end
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == " "
    taken = false
  else
    taken = true
  end
  taken
end

def valid_move?(board, index)
  if (index < 0 || index >= board.size)
    valid = false
  elsif position_taken?(board, index)
    valid = false
  else
    valid =true
  end
  valid
end

def move(board, index, token = "X")
  board[index] = token
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end
