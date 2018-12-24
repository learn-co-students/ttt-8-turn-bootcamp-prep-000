

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#puts "Welcome to Tic Tac Toe!"
#puts "Where would you like to go?"

def input_to_index(user_input)
	actual_input = user_input.to_i - 1
end






def input_to_index(user_input)
	actual_input = user_input.to_i - 1
end

def move(board, actual_input, typedin = "X")
 
 	board[actual_input] = typedin
 end

 def valid_move?(board , actual_input)
 	
	if board[actual_input] == "X"  || board[actual_input] == "O"
		return false			
	elsif actual_input >= 0 && actual_input <= 8
		return true
	elsif actual_input < 0 || actual_input > 8
		return false
	
	else
	return false#elsif board[index] == " " || board[index] == "X"
			#return nil

		#return "Invalid entry, try again"
end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
	def position_taken?(board, actual_input)
 		if board[actual_input] == " "
		return false

		elsif board[actual_input] == ""
		return false
		elsif board[actual_input] == nil
		return false
		else
		return true
		puts "Position taken"
		end
	end



	 def turn(board)
 			puts "Please enter 1-9:"
 			
			user_input = gets.chomp
 		 actual_input = input_to_index(user_input)

 		
	
		if valid_move?(board,actual_input) == true
		  move(board, actual_input)
		display_board(board)
		
		else 
		 turn(board)
		
	
		#user_input = gets.strip
		
		end
 	

 		
	end
 #valid_move? method here
#user_input = gets.strip
#index = user_input - 1

