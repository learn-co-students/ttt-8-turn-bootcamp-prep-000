def display_board(board)
  border = "|"
  separator = "-----------"
  i = 0
  output = ""
  while i < board.length do
    output += " #{board[i]} "
    if i == 2 || i == 5
      output += "\n#{separator}\n"
    elsif i == 8
      output += "\n"
    else
      output += "#{border}"
    end
    i += 1
  end
  puts output
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move(board, position, choice = "X")
  board[position] = choice
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    return display_board(board)
  else
    turn(board)
  end
end
