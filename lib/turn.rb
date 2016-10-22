def turn(board)
  valid_input = false
  while !valid_input
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
    if (valid_move?(board,index))
      move(board, index)
      display_board(board)
      valid_input = true
    else
      puts "Invalid input"
    end
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def valid_move?(board, index)
  if (index < 0) || (index > 8)
    return false
  else
    return !position_taken?(board,index)
  end
end

def position_taken?(board, index)
  if (board[index] == nil || board[index].strip.length == 0)
    return false;
  else
    return true
  end
end

def move(board, index, player='X')
  board[index] = player
  return board
end
