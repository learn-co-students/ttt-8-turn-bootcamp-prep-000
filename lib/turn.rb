def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i
  index = index - 1
  return index
end


def valid_move?(board, index)
  def position_taken?(the_board, ind)
    if the_board[ind] == " " || the_board[ind] == "" || the_board[ind] == nil
      return false
    else
      return true
    end
  end
  
  def valid_position?(number) 
    if number.between?(0, 8)
      return true
    else
      return false
    end
  end
  
  if (position_taken?(board, index)) == false && (valid_position?(index) == true)
    return true
  else
    return false
  end
  
end

def move(board, index, value = "X")
  board[index] = value
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
end
  
end