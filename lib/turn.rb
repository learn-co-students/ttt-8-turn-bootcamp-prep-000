require "pry"
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if index < 8
	if valid_move?(board, index) && index.between?(0, 8)
		move(board, index, players_character = "X")
		display_board(board)
	end
  else
	turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !index_is_not_nil?(board[index])
	index_integer = index.to_i
	if !position_taken?(board, index) && index_integer.between?(0,8)
	  return true
	else
	  return false
	end
  else
	return false
  end
end

def index_is_not_nil?(index)
  if index == nil
	return true
  else
	return false
  end
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
	return false
  elsif board[index] == "X" || board[index] == "O"
	return true
  end
end

def input_to_index(user_input)
  index_position = user_input.to_i
  index_position - 1
end

def move(board, index, players_character = "X")
  board[index] = players_character
end