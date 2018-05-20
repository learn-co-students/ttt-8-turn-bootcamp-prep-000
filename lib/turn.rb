



def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} " 
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} " 
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} " 
 puts "-----------"
 
 
end


def move(board, position, token = "X")
    position = position.to_i
    board[position] = token
end



def input_to_index(user_input)
 a =  user_input.to_i
 a -1

end


def valid_move?(board, position)
    position = position.to_i
    if position < 0 || position > 9 || board[position] == "X" || board[position] == "O"
      puts board[position]
     return false 
    else
      return true
    end
end

def turn(board) 
  puts "Please enter 1-9:"
  inni = gets.strip
  ans = input_to_index(inni)
  
  if valid_move?(board, ans)
    move(board,ans)
    display_board(board)
    
  else 
    puts "Please enter a valid number"
    a = gets.strip
    return 1 
  end
 
  
end