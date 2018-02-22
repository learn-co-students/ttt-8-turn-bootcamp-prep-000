

def display_board(board)
  puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts("-----------")
  puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts("-----------")
  puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(user_input)
  index = user_input.to_i-1
end

def valid_move?(board,index)
  def position_taken?(arr,pos)
    if (arr[pos] == " ") || (arr[pos] == "") || (arr[pos] == nil)
      return false
    else return true
    end
  end
  if position_taken?(board,index) || index < 0 || index > 8
    return false
    else return true
  end
end

def move(board,index,value = " X ")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index,value = "X")
  else
    turn(board)
  end
  display_board(board)
end
