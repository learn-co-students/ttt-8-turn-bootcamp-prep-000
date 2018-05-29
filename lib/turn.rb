def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def move(board, position, player = "X")
  board[position] = player
  return board
end


def input_to_index(input)
number = input.to_i
position = number - 1
end


def valid_move?(board, index)
  if position_taken(board, index) == false && on_board(index) == true
    return true 
  else 
    return false
  end
end


def position_taken(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end


def on_board(int)
    if int.between?(0,8) == true
      return true
    else 
      return false
    end
end


def turn(board) 
  puts "Please enter 1-9:"
  position = gets.strip
  index = input_to_index(position)
  if valid_move?(board, index) == true 
    move(board, index, player = "X")
    display_board(board)
  else
    until valid_move?(board, index) == true
    puts "Please enter 1-9:"
    position = gets.strip 
    index = input_to_index(position)
    valid_move?(board, index)
    end
  end
end