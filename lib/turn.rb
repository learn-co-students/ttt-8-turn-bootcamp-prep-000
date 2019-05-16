def valid_move?(board, index)
  index.between?(0,8) && !(position_taken?(board, index))
end

 def position_taken?(board, index)
  !(board[index] == "" || board[index] == " ")
end

 def move(board, input, value = "X")
  board[input] = value
end

 def input_to_index(input)
  input = input.to_i
  input -= 1
end

 def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  index = input
  if valid_move?(board, index)
    move(board, input, value = "X")
    display_board(board)
  else
    turn(board)
  end
end 