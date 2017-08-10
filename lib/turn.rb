def valid_move?(board, index)
  if 0 <= index && index <= 8
    if !position_taken?(board, index)
      return true
    end
  end
  false
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (num)
  num.to_i-1
end

def move (board, index, player = "X")
  board[index] = player
  return board
end


def turn(board)
  valid = false
  while valid == false
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    valid = valid_move?(board, index)
  end
  move(board, index, "X")
  display_board(board)
end
