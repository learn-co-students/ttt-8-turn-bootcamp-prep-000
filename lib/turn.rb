def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  if valid_move?(board, index)
      move(board, index, "X")
      display_board(board)
  else
     turn(board)
  end
end

def move(board, index, player = "X")
  board[index] = player
end

def display_board(board)
  line = ""
  11.times {line = line + "-"}
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index < 0 || index > 8
    return false
  elsif position_taken?(board, index)
    return false
  else
    return true
  end

end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
  return index
end
