def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if index >=0 && index <=8
    !position_taken?(board, index)
  else
    false
  end
end

def position_taken?(board, index)
  element = board[index]

  if element == "X" || element == "O"
    true
  elsif (element == " " || element == "") || (element == nil)
    false
  end
end

def move(board, index, player="X")
=begin
  if valid_move?(board, index)
    board[index] = player
  end
=end
  board[index] = player
end


def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip

  input = input_to_index(input)

  valid = valid_move?(board, input)

  if valid
    move(board, input)
    display_board(board)
  else
    turn(board)
  end

=begin
  until valid do
    puts "Please enter 1-9:"
    input = gets.strip
    input = input_to_index(input)

    # puts input

    valid = valid_move?(board, input)
  end


  move(board, input)
  display_board(board)
=end

end
