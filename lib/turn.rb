def display_board(board)

  puts row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  puts row2 = "-----------"
  puts row3 = " #{board[3]} | #{board[4]} | #{board[5]} "
  puts row4 = "-----------"
  puts row5 = " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move?(board, index)
  if index >= 0 && index <=8 && board[index] == " "
    return true
  end
end

def move(board, index, token = "X")
  puts board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  while x = input_to_index(gets)
    if valid_move?(board, x) == true
      break
    end
  end
  move(board, x)
  display_board(board)
end
