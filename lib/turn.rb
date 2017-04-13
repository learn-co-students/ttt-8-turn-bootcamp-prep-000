
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  return user_input.to_i - 1
end

def move(array,location,team="X")
  array[location] = team
  return array
end

# code your #valid_move? method here
def valid_move?(array,index)
  if (position_taken?(array,index) || index < 0 || index > array.length-1)
    return false
  else
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(array,index)
  if(array[index] == " " || array[index] == "" || array[index] == nil)
    return false
  else
    return true
  end
end

def game_running(board)
  index = 0
  while index < board.length
    if !position_taken?(board,index)
      return true
    end
    index += 1
  end
  return false
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if(valid_move?(board,index))
    move(board,index,"X")
  else
    turn(board)
  end
  display_board(board)
end
