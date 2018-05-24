def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  loop do
    if(input.to_i > 9 || input.to_i < 1)
      puts "Please enter a valid input"
      input = gets.strip
    else
      break
    end
  end
  index = input_to_index(input)
  move(board, index, "X")
  display_board(board)
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, token = "X")
  if(valid_move?(board, index))
    board[index] = token
  end
end

def display_board(board)
  puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts("-----------")
  puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts("-----------")
  puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def valid_move?(board, index)
  if(!position_taken?(board, index) && -1 < index && index < 9)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if(board[index] != " " && board[index] != "" && board[index] != nil)
    true
  else
    false
  end
end
