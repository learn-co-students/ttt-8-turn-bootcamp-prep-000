def display_board(board)
  rows = [] #make empty array
  board.each_slice(3) do |row|
    rows << " #{row.join(" | ")} " #shovel results of this into my newly made array to create an array of arrays, each representing a row in my gameboard
  end
  puts rows.join("\n-----------\n") #now joining the array of arrays by the lines that divide my gameboard horizontally, the \n inserts a line break, otherwise everything would appear in one line
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == " "
    return true
  else return false
  end
end

def valid_move?(board, index)
  if ( index.between?(0, 8) && position_taken?(board, index) )
    true
  else false
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  while valid_move?(board, index) != true
    puts "You are naughty. \nEither you did not enter a number between 1 and 9 or you are trying to overwrite an existing move."
    print "Tsk-tsk. Please try again: "
    input = gets.chomp
    index = input_to_index(input)
  end
  move(board, index)
  display_board(board)
end
