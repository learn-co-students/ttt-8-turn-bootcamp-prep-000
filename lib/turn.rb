def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end




def valid_move?(board, index)
  if position_taken?(board, index) || index < 0 || index > 9
    return false
  else
    return true
  end
end




def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end




def move(board, index, mark="X")
  if valid_move?(board, index)
    board[index] = mark
  end
end




def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  input = input_to_index(input)
  
  while true 
  break if input >= 0 && input <= 8
    turn(board)
    break
  end
  
  move(board, input, mark="X")
  display_board(board)
end




def input_to_index(input)
  if input.to_i == 0
    return -1
  else
    return input.to_i - 1
  end
end























