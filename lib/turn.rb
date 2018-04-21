def display_board (board)
puts  " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts   " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts   " #{board[6]} | #{board[7]} | #{board[8]} "
end



def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end



def move(arr, index, character = "X")
  arr[index] = character
end



def position_taken? (board, index)

  if   board[index]==" " || board[index]=="" || board[index]== nil
   return  false
  else 
   return  true
  end
 
end



def valid_move?  (board, num_entered)

  if (num_entered < 0 || num_entered > 8)
    return false
  elsif position_taken?(board, num_entered)
    return false
  else
    return true
  end
  
end



def turn (board)
  puts "Please enter 1-9:"
   input = gets.chomp
   input = input_to_index(input)
  
   if valid_move?( board, input)
      move(board, input)
      puts display_board(board)
    else
      turn(board)
    end 
 
end














