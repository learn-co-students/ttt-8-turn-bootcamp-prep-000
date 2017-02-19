
def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)
  player = "X"
  if valid_move?(board, input)

    move(board, input, player)
    display_board(board)
  else
    puts "That was not a valid entry."
    turn(board)
  end

end


def move(board, index, player)
  board[index] = player
  return board
end

def input_to_index(str)
  return str.to_i-1
  
end

def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (index.class == Fixnum)  
    if (index > -1 && index < 9)
      if (position_taken?(board, index) == false)
        return true
      else
        return false
      end
    else
      return false
    end
  else
    return false 
  end
end

def position_taken?(board, index)
  if board[index] != " "
      return true
  end
  return false
end

def request_entry
  input_to_index(gets.strip)
end
