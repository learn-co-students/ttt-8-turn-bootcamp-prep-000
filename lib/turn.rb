def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
	if index.between?(0,8) && !position_taken?(board, index) 
		return true
	else
		return false
 	end
end


def position_taken?(board, index)
if board[index] == " " || board[index] == "" || board[index] == nil
  return false
else
    return true
  end
end 


def input_to_index(input)
  input.to_i - 1;
end 


def move(board, index, character = "X")
  board[index] = character
end 


