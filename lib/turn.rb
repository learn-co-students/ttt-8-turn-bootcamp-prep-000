def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if index >= 0 && index <=8
    return !position_taken?(board,index)
  else
    return false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  value = board[index]
  if value == " " || value == "" || value == nil
    return false
  else
    return true
  end
end


def input_to_index(input)
  index = input.to_i - 1
  return index
end

def move(board,index,value = "X")
  board[index] = value
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  while true
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board,index)
      new_board = move(board,index)
      display_board(new_board)
      break
    else 
      puts "Please enter valid input(1-9 empty space):"
    end
  end
end

    
