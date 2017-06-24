def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, char="X")
  board[index] = char
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 9)
    return true
  else
    return false
  end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  case board[index]
  when ""
    return false
  when " "
    return false
  when nil
    return false
  end
  if "X" || "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == false
    puts "Please enter 1-9:"
    input = gets.strip
  else
    move(board, index, "X")
    display_board(board)
  end
end
