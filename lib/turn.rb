def display_board(board)
  print_spaces(board[0],board[1],board[2])
  print_dash
  print_spaces(board[3],board[4],board[5])
  print_dash
  print_spaces(board[6],board[7],board[8])
end

def print_dash
  puts "-----------"
end

def print_spaces (val1, val2, val3)
  puts " #{val1} | #{val2} | #{val3} "
end

def position_taken?(board,index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def input_to_index(input)
  index = input.to_i-1
  return index
end

def valid_move?(board,index)
  if index <=8 && index >=0
    if position_taken?(board,index)
      return false
    else
      return true
    end
  else
    return false
  end
end

def move(board,index,token = "X")
  if valid_move?(board,index)
    board[index]=token
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if move(board,index,"X")
    display_board(board)
  else
    puts "This is not a valid move."
    turn(board)
  end
end
