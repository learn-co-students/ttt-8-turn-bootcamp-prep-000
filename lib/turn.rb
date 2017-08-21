def turn(board)
  index = nil

  puts "Please enter 1-9:"

  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  return false unless index
  is_invalid = index < 0 || index > 8
  if is_invalid || position_taken?(board, index)
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  moves = %W(X O)
  if moves.include?(board[index])
    return true
  else
    return false
  end
end

def input_to_index(input)
  return -1 unless input.to_i.to_s == input
  return input.to_i - 1
end

def move(board, position, char = 'X')
  board[position] = char
end
