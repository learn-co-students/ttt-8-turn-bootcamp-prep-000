def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def valid_move?(board,index)
  if index > 8 || index < 0
      false
    elsif position_taken?(board, index)
      false
    else
      true
    end
end

def position_taken?(board, index)
  taken = nil
  if (board[index] ==  " " || board[index] == "" || board[index] == nil)
    taken = false
  else
    taken = true
  end
  taken
end

def turn (board)
  puts "Please enter 1-9:"
  number = gets.chomp
  index = input_to_index(number)

  while valid_move?(board, index) == false
    puts "Please enter 1-9:"
    number = gets.chomp
    index = input_to_index(number)
  end

  move(board, index, current_player = "X")
  display_board(board)

end
