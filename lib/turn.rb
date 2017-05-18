def display_board (board)
  def dashed_line
    11.times {print "-"}
    puts ""
  end
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  dashed_line
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  dashed_line
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def valid_move?(board, index)
  def position_taken?(array, index)
     !((array[index] == " ") || (array[index] == "") || (array[index] == nil))

  end

  !position_taken?(board, index) && index.between?(0,8)

end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(pos)
  board_pos = pos.to_i - 1
end

def turn(board)

  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  until valid_move?(board, index)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end

  move(board, index)

  display_board(board)

end
