def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index) == true
      move(board, index, character = "X")
      display_board(board)
      break
    end
  end
end



def input_to_index(number)
  number.to_i - 1
end

#MOVE
def move(board, index, character = "X")
  board[index] = character
  return board
end

# IS IT A VALID MOVE?
def valid_move?(board, index)
    #Valid position                position is not taken
  if index.between?(0, 8) && !position_taken?(board, index)
    true
  end
end

#IS THE POSITION TAKEN?
def position_taken?(board, index)
  if board[index] == "" || board[index] == " "
    false
  elsif board[index] == nil
    false
  elsif board [index] = "X" || "O"
    true
  end
end

#DISPLAY THE BOARD
def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts '-----------'
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts '-----------'
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end
