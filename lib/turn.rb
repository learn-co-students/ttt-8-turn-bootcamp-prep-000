
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(arrayBoard , index)
  if (index >= 0 && index <= 8) && !(position_taken?(arrayBoard , index))
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(arrayBoard , index)
  if (arrayBoard[index] == "" || arrayBoard[index] == " " || arrayBoard[index] == nil)
    return false
  else
    return true
  end
end

def input_to_index(index)
  index = index.to_i - 1
end

def move(arrayBoard , index , value = "X")
  arrayBoard[index] = value
end




def turn(board)
  flageTurn = true
  i = 0
  counterXO = [0 , 0]
  while i < 9
    if(board[i] == "X" || board[i] == "x")
      counterXO[0] += 1
      i += 1
    elsif(board[i] == "o" || board[i] == "O")
      counterXO[1] += 1
      i += 1
    else 
      i += 1  
    end
  end
  puts "#{counterXO[0]} , #{counterXO[1]}"
  if(counterXO[0] > counterXO[1])
    flageTurn = false
  end
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if (valid_move?(board , index))
    if flageTurn
      move(board , index )
    else
      move(board , index , "O")
    end
    display_board(board)
  else
    puts "input is incorrect"
    turn(board)
  end
end