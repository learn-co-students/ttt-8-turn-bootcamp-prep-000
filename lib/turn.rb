def turn(board)
  puts "Please enter 1-9:"
  cell = input_to_index(gets.strip)
  if valid_move?(board, cell)
    move(board, cell)
    display_board(board)
    return
  else
    turn(board)
  end
end

def input_to_index(input)
  return input.to_i - 1
end

def display_board(board)
  line = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif index < 0 || index > 8
      return false
  else
    return true
  end
end
      




def position_taken?(board, position)
  if(board[position] == " " || board[position] == "" || board[position] == nil)
    return false
  else
    return true
  end
end

def move(board, position, marker="X")
  board[position] = marker
end
  