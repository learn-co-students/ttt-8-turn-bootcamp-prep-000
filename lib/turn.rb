def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
 def input_to_index(input)
 	inp = nil
 	if input.kind_of?(Array)
 		inp = input.join.to_i
 	else 
 		inp = input.to_i
 	end
 	i = inp - 1
 	return i
 end


 def move(array, index, char = "X")
 	array[index] = char
 	return array
 end

def valid_move?(array, i)
	if !position_taken?(array, i) && i.between?(0, 8)
		true
	else
		false
	end
end

def position_taken?(array, char)
	if array[char] == "" || array[char] == " " || array[char].nil?
		return false
	else array[char] == "X" || array[char] == "O"
		return true
	end
end

def turn(array)
	puts "Please enter 1-9:"
	input = gets.split
	i = input_to_index(input)
	if valid_move?(array, i)
		move(array, i)
		display_board(array)
	else
		puts "invalid"
		new_i = gets.split
	end
end