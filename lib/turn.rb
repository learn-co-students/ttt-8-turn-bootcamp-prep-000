def turn( board )

  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index( input )

  #puts "Index in turn(): #{index}"

#    if ( index == -1 )  # An invalid index
#      turn( board )
#    end

    if (valid_move?(board, index) == true )
        move( board, index, "X" )
    else
      turn( board )
    end

    display_board( board )
    #turn( board )


#  if (valid_move?(board, index) == true )
#      move( board, index, "X" )
#      display_board( board )
#      turn( board )
#  else
      #puts "Index in FALSE turn(): #{index}"
#      move( board, index, "X" )
#      display_board( board )
#      turn( board )
#  end
#  return 1
end


# code your #valid_move? method here
def valid_move?( board, index )

  if (index.between?(0,8) ) && ( position_taken?(board, index) == false )
    return true
  else
    return false
  end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?( board, index )

  if( board[index] == " " || board[index] == "" || board[index] == nil )
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

 def input_to_index( inputString )
   index = inputString.to_i - 1
   #puts "Index: #{index}"
   if (index.between?(0,8) == true )
    return index
  else
    return -1
  end
 end

 def move( board, index, value = "X" )
  board[index] = value
  return board
 end
