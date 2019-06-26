def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,position)
  if position.between?(0,8)
    if position_taken?(board,position)== false
      return true
    else
      return false
    end
  end
end

def position_taken?(board,position)
  if board[position]==" " || board[position]== "" || board[position]== nil
    return false
  else
    return true
  end
end

def move (board, index, side = "X")
  board[index] = side
end

 def input_to_index (user_input)
   return user_input.to_i - 1
 end

def turn(board)
  puts "Please enter 1-9:"
  playersMove = gets.strip;
  playersMove = input_to_index(playersMove)
  if (!valid_move?(board, playersMove))
    turn(board)
  else
    move(board,playersMove);
    display_board(board)
  end
end
