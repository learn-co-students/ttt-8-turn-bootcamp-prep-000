def display_row(arr, line)
  starting_num = (line * 3) - 3
  puts " #{arr[starting_num]} | #{arr[starting_num+1]} | #{arr[starting_num+2]} "
end

def display_lines
  puts "-----------"
end

def display_board(arr)
  display_row(arr, 1)
  display_lines
  display_row(arr, 2)
  display_lines
  display_row(arr, 3)
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
  board
end
def valid_move?(board, index)
  if position_taken?(board, index)
    false
  else
    if index >= 0 && index <= 8
      true
    else
      false
    end
  end

end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  valid_move?(board, index) ? move(board, index) : turn(board)
  display_board(board)
end
