def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
	puts "-----------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
	puts "-----------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board, index)
  if board[index] == " " && index >= 0 && index <= 8
    return true
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  
  if valid_move?(board, index) == true	
  	move(board, index, token = "X")
  	display_board(board)
  elsif
  	turn(board)
  end
end
