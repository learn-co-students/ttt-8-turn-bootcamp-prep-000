#Function to display the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Converting the input to an index
def input_to_index(index)
  return (index.to_i - 1)
end

#move function
def move(array, index, token = "X")
  array[index] = token
  return array
end

#check for a move
def valid_move?(board, index)
  if (index > 8 || index < 0)
    return FALSE
    
  elsif (board[index] == "X" || board[index] == "O")
    return FALSE
    
  else 
    return TRUE
  end
end

#Check to see if a position is valid
def position_taken?(board, index)

  if ((board[index] == " " || board[index] == "") && valid_move)
    return FALSE
  
  elsif (board[index] == nil && valid_move)
    return FALSE
    
  else
    return TRUE
  
  end
  
end

#Turn check Function
def turn(board)
  #Step 1: Request and recieve input
    puts "Please enter 1-9:"
    index = gets.chomp
    
  #Step 2: Convert the input in to a valid index
    index = input_to_index(index)
    
  #Step 3: Check index as a valid move as a position
  #If the move is valid, display
    if (!valid_move?(board, index))
      while !valid_move?(board, index)
        print "Please enter a valid move: "
        index = gets
        index = input_to_index(index)
      end
    end
  
      move(board, index)
      display_board(board)
  end
  
    
  

