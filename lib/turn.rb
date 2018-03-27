def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  end
end

def position_taken?(board, index)
		board[index] != " "
end

def input_to_index(input)
		index = input.to_i - 1
		return index
end

def move(board, index, piece = "X")
  board[index] = piece
end

def turn(board)
		puts "Please enter 1-9:"
		position = gets.strip
		index = input_to_index(position)
		if(valid_move?(board, index))
				move(board, index)
				display_board(board)
		else
				turn(board)
		end
end

		# because of test specs I couldn't validate using the following
		# index = 99 (default invalid index)
		# until valid_move?(board,index)
		#     puts "Please enter 1-9:"
		#     position = gets.strip
		#     isndex = input_to_index(position)
		# end


