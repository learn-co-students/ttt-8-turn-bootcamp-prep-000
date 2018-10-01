def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index >= 0 && index < 9
    if !position_taken?(board, index) 
    TRUE
  else  
    FALSE
    end
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
    FALSE
  else
    TRUE
  end
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
  return converted_input
end


def move(board, converted_input, token = "X")
  board[converted_input] = token
  end
  
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_input = input_to_index(user_input)
  if valid_move?(board, user_input)
    move(board, user_input, "X")
    display_board(board)
  
  else 
    puts "This is not a valid spot"
    turn(board)

end
  
  end


