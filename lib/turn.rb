def display_board(board)
  puts " " +board[0]+" | "+board[1]+" | "+board[2]+" "
  puts "-----------"
  puts " " +board[3]+" | "+board[4]+" | "+board[5]+" "
  puts "-----------"
  puts " " +board[6]+" | "+board[7]+" | "+board[8]+" "
end

def valid_move? (board, index)
  if index <= 8  && index >= 0 && (board[index] == "" || board[index] == " " || board[index] == nil)
    return TRUE
  end
  return FALSE
end

def move (board, input, token ="X")
  board[input] = token
end
def input_to_index (input)
  return input.to_i-1
end
def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip()
  index = input_to_index(input)
  until valid_move?(board,index)
    puts "Please enter 1-9:"
    input = gets.strip()
    index = input_to_index(input)
  end
  move(board,index)
  display_board(board)
end