def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(array, index)
  if !(index.between?(0,8))
    return false
  end
  if position_taken?(array, index)
    return false
  else
    return true
  end
end

def position_taken?(array, index)
  if array[index] == " " || array[index] == ""|| array[index] == nil
    return false
  end
  if array[index] == "X" || array[index] == "O"
    return true
  end
end



# code your input_to_index and move method here!
def input_to_index(input)
  index = input.to_i - 1
  index
end


def move(array, position, xoro = "X")
  array[position] = xoro
end
board = [" "," "," "," "," "," "," "," "," "]
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index)
    puts display_board(board)
  else
    puts "Invalid"
    puts "Please enter 1-9:"
    turn(board)
  end
end
