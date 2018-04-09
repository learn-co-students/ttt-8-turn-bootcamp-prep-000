
board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  if index >= 0 && index < 9
    if position_taken?(board, index) == false
      return true
    elsif position_taken?(board, index) == true
      return false
    end
  else
    return false
end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def input_to_index(input)
  index = input.to_i
  index -= 1
  return index
end

def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
      if valid_move?(board, index)
        move(board, index)
    display_board(board)
      break
    end
  end
end
