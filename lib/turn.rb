def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  display_separator
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  display_separator
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def display_separator
  11.times do
    print '-'
  end
  print "\n"
end

def valid_move?(board, index)
  if index < 0 || index > 8
    false
  else
    !position_taken?(board, index)
  end
end

def position_taken?(board, index)
  case board[index]
  when " ", "", nil
    false
  else
    true
  end
end

def move(board, index, player = "X")
  board[index] = player
  display_board(board)
end

def input_to_index(user_input)
  user_input.to_i - 1
end


def turn(board)
  choice = 0
  loop do
    puts "Please enter 1-9:"
    choice = input_to_index(gets.strip)
    break if valid_move?(board, choice)
  end

  move(board, choice)
end
