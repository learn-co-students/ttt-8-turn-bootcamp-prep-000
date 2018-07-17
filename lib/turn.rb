def display_board(aBoard)
  puts " #{aBoard[0]} | #{aBoard[1]} | #{aBoard[2]} "
  puts '-----------'
  puts " #{aBoard[3]} | #{aBoard[4]} | #{aBoard[5]} "
  puts '-----------'
  puts " #{aBoard[6]} | #{aBoard[7]} | #{aBoard[8]} "
end

def valid_move?(board, index)
  if index >= 0 && index < 9
    if position_taken?(board, index)
      return false
    else
      return true
    end
    
  else
    return false
  end
end

def position_taken?(board, index)
  tempPos = board[index]
  
  if tempPos == "" || tempPos == " " || tempPos == nil
    return false
  else
    return true
  end
  
end

def move(passed_board, index, char = "X")
  passed_board[index] = char
  return passed_board
end

def input_to_index(input)
  return input.to_i - 1
end

def move(passed_board, index, char = "X")
  passed_board[index] = char
  return passed_board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board, input)
  else
    turn(board)
  end
  display_board(board)
end