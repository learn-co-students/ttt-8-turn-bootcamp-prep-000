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

def move(board, input, val="X")
  board[input]=val
end

def position_taken?(board, index)
  value = board[index]
  if value == "" || value== " " || value== nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)

  if (index >=0 && index <9)
    return !position_taken?(board, index)
  else
    return false
  end

end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "Please enter valid move."
    turn(board)
  end
end
