def display_board(rows = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{rows[0]} | #{rows [1]} | #{rows[2]} "
  puts "-----------"
  puts " #{rows[3]} | #{rows [4]} | #{rows[5]} "
  puts "-----------"
  puts " #{rows[6]} | #{rows [7]} | #{rows[8]} "
end

def input_to_index(user_input)
  index = (user_input.to_i) - 1
  return index
end

def valid_move?(board, index)
  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      return false
    else
      return true
    end
  end
  
  if index.between?(0, 8)
    return !position_taken?(board, index)
  else
    return false
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index=input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end