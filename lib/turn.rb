board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


def turn(board)


  display_board(board)

  user_input = gets.strip

  array_index = input_to_index(user_input)

  if valid_move?(board, array_index)
    move(board, array_index, "X")
    display_board(board)
  else
    turn(board)
  end  
  
end



def input_to_index(input)
  return input.to_i - 1
end

#take the return value (Number) of input_to_index and use it in a method that needs player input

def display_board(board)
  puts "Please enter 1-9:"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def valid_move? (board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  else
    return false
  end
end


#if valid move is true, execute move method

def move (board, index, token = "X")
  board[index] = token
end
  
  
  
  
  