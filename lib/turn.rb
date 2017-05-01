def valid_move?(board, index)
  if index.between?(0,8)
    if position_taken?(board, index) == false
      return true
    end
  end
  false
end


def position_taken?(board, index)
  if board[index] == "" || board[index] == " " ||board[index] == nil
    return false
  end
  else true
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(n)
  index = n.to_i - 1
end

def move(board, index, symbol = "X")
  board[index] = symbol
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  while valid_move?(board, index) == false
    return turn(board)
  end
  move(board, index, "X")
  display_board(board)

end
