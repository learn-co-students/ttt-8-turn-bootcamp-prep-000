def display_board(board_array)
  puts " #{board_array[0]} | #{board_array[1]} | #{board_array[2]} "
  puts "-----------"
  puts " #{board_array[3]} | #{board_array[4]} | #{board_array[5]} "
  puts "-----------"
  puts " #{board_array[6]} | #{board_array[7]} | #{board_array[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) || index < 0 || index > 8
    return false
  else
    return true
  end
end


def move(board, index, char = 'X')
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  ans = gets.strip
  index = input_to_index(ans)
  log = valid_move?(board, index)
    if log == false
      puts "invalid"
      turn(board)
    else
      move(board, index, char = 'X')
      display_board(board)
    end
end
