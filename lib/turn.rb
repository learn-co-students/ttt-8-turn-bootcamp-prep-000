def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  player = "X"
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board, index, player)
  else
    turn(board)
  end
  display_board(board)
end

def input_to_index(index)
  index = index.to_i
  index = index - 1
end

def move(array, index, player = "X")
  array[index] = player
end

def valid_move?(board,index)
  if position_taken?(board,index)
    false
  else
    if index.between?(0, 8)
      true
    end
  end
end

def position_taken?(board,index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    if board[index] == "" || board[index] == " " || board[index] == nil
      false
    end
  end
end
