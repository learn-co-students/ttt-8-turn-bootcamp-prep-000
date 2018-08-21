
def display_board(board)
  counter = 0
  new_board = ""
  board.each do |x|
    new_board += " #{x} "
    if (counter != 2 || counter != 5 || counter != 8)
      new_board += "|"
    end
    if (counter == 2 || counter == 5)
      new_board += "\n-----------\n"
    end
    counter += 1
  end
  puts new_board
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if (index.between?(0, 8))
    cell = board[index]
    if (cell == " " || cell == "" || cell = nil)
      return true
    elsif (cell == "X" || cell == "O")
      return false
    end
  else 
    return false
  end
end

def move(board, index, player = "X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  choice = input_to_index(gets.strip())
  if (valid_move?(board, choice))
    move(board, choice, "X")
    puts display_board(board)
  else
    puts "Invalid choice!"
    turn(board)
  end
end