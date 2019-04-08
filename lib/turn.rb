
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == true
    return false
    elsif index.between?(0, 8)
    return true
    elsif index > 8 
    return false
    elsif position_taken?(board, index)
    return nil
  end
end


def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
    elsif board[index] == "X" || board[index] == "O"
    return true
  end 
  
end

def input_to_index(i)
  i = i.to_i
  index = i - 1
  
end

def move(board, index, player= "X")
  board[index] = player
end


def turn(board)
  puts "Please enter 1-9:"
  i = gets.chomp
  index = input_to_index(i)
  if valid_move?(board, index) == true
    move(board, index, player= "X")
    display_board(board)
  else
    turn(board)  
  end
    
  
end

