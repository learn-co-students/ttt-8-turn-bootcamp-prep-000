def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  index = input_to_index(input)

  if(valid_move?(board, index))
    move(board, index)
    display_board(board)
  else
    puts
    puts "I'm sorry, that move is not valid."
    puts
    turn(board)
  end

end

def valid_move?(board, index)
  if index.between?(0,8) && !(position_taken?(board, index))
    true
  else
    false
  end
end

def position_taken?(board, index)
  if(board[index] == "X" || board[index] == "O")
    true
  else
    false
  end
end

def input_to_index(choice)
  return choice.to_i - 1
end

def move(board, index, player = "X")
  board[index] = player
end
