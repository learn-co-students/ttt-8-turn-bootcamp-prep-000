
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
  if  valid_move?(board, index) == TRUE
      move(board, index, "X") &&   display_board(board) 
    else
      puts "invalid"  
      turn(board)
  end 
  # display_board(board) 
  
end




def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end






def input_to_index(input)
  position = input.to_i - 1     
  return position
end



#move method represents a user moving into a position

def move(array, index, value = "X" )
  def update_array_at_with(array, index, value = "X" )   # was value = "X" @ 857
    
    array[index] = value
  end
  update_array_at_with(array, index, value)
  return array    
  
end





def valid_move? (array, index)

  def position_taken?(array, index)
    if ( array[index] == " " ||  array[index] ==""  || array[index] == nil )
      return FALSE
    else
      return TRUE
    end
  end
  
taken = position_taken?(array, index)
  
  if ( index >= 0  && index < 9  && taken == FALSE )
    return TRUE
  else 
    return FALSE
  end 
  
end

