def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def valid_move?(board,ind)
  if ind > 9 || ind < 0
    return false
  elsif board[ind] == " "
    return true
  elsif board[ind] == "X" || "O"
    return false
  end
end

def move (board,ind,tok = "X")
  if position_taken?(board,ind) == false
    board[ind] = tok
  end
  return board

end

def input_to_index(int)
  
  int = int.to_i
  
  if int <10 && int > 0
    int = int-1
    return int
  elsif int == 0
    return -1
  else
    return false
  end
end

def position_taken? (board,index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X" || "O"
    return true
  end
end

def turn (board)
  pos = -1

  while pos == nil || pos == -1 do
    puts "Please enter 1-9:"
    pos = gets.strip
    pos = input_to_index(pos)
      if pos == nil || pos == false || pos == -1
        puts "Invalid input. Try again."
      end
  end
  
  if position_taken?(board,pos) == false && valid_move?(board,pos)
    move(board,pos)
  end
  
  display_board(board)
  
end