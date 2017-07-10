def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

 def input_to_index(input)
   input.to_i-1
 end

def valid_move?(board, index)
   if index.to_i.between?(0,8)
   if !position_taken?(board, index)
          true
        end
    end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
if valid_move?(board, index)
	move(board, index)
	display_board(board)
else
	turn(board)
    end
end

def position_taken?(board, index)
     if board[index] == " " || board[index] == nil || board[index] == ""
       return false
     elsif board[index] == "X" || board[index] == "O"
       return true
     end
   end

def move(board, index, current_player = "X")
     board[index] = current_player
   end
