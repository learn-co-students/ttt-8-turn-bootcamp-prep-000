#helper methods

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}  "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]}  "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]}  " 
end

def valid_move?(board, index)
  if index.between?(1,9)    
    if !position_taken?(board, index)
      true
    end
  end
  
  index.between?(0,8) && !position_taken?(board, index)
end 

def input_to_index(user_input)
  user_input.to_i-1
end

def position_taken? (board, index)
  isTaken = nil
  
  if(board[index] == " " || board[index] == "" || board[index] == nil)
    isTaken = false 
  elsif
    isTaken = true 
  end
  
  isTaken
  
end

def move(board, index, player_1 = "X")
  board[index] = player_1
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  
  if valid_move?(board, index)
    #move based on input 
    move(board, index)
    
    #display board after valid move
    display_board(board)
    
  else
    #ask for valid input
    
    turn(board)
  end
  
end


