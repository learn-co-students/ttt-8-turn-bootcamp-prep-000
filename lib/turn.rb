def turn(board)
  puts "Please enter 1-9:"
  idx = gets.strip.to_i
  input = input_to_index(idx)
  until valid_move?(board, input)
    puts "Please enter 1-9:"
    idx = gets.strip.to_i
    input = input_to_index(idx)
  end
  move(board, input, "X")
  display_board(board)

end

def display_board(board)
  #empty
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index = " ")
  return index.to_i - 1
  if index != " "
    return index = -1
  end
end

def move(board, index, input = "X")
  board[index] = input
end

def valid_move?(board, idx)
  if !position_taken?(board, idx) && idx.between?(0,8) == true
    return true
  else
    return false
  end
end

def position_taken?(board, idx)
  if board[idx] == " "
    return false
  elsif board[idx] == ""
    return false
  elsif board[idx] == nil
    return false
  elsif board[idx] == "X" || board[idx] == "O"
    return true
  end
end
