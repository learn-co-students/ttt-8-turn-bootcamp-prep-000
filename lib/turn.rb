def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
	!(!((0..8).include?(position)) || position_taken?(board, position))
end

def position_taken?(board, position)
	!([" ", "", nil].include?(board[position]))
end

def input_to_index(user_input)
	input = user_input.to_i - 1
end

def move(board, position, char = "X")
	board[position] = char
	board
end

def turn(board)
	user_input = 1
	while user_input
		puts "Please enter 1-9:"
		user_input = input_to_index(gets.chomp)
		if valid_move?(board, user_input)
			display_board(move(board, user_input, char = "X"))
			break
		end
	end
end