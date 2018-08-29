#display_board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} \n"
end

#valid_move?

def valid_move?(board, index_num)
  
  if !(position_taken?(board, index_num)) && (index_num.between?(0, 8))
    TRUE
  
  else
    FALSE
  
  end
  
end

#position_taken?

def position_taken?(board, index_num)
  if board[index_num] == " " || board[index_num] == "" || board[index_num] == NIL
    FALSE
  elsif board[index_num] == "X" || board[index_num] == "O"
    TRUE
  end
end

#move 

def move(board, index_num, player_token = 'X')
  board[index_num] = player_token
end 

#input_to_index

def input_to_index(user_input)
  user_index = user_input.to_i
  user_index - 1
end

#turn 

def turn(board)
  puts "Please enter 1-9:"
  
  input = gets.strip
  
  index = input_to_index(input)
  
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)

  else turn(board)
  
  end
  
end