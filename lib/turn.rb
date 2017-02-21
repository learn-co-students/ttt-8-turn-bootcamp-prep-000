def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, n)

  (0..8).include?(n) && board[n] == " "

end

def input_to_index(input)

  $index = input.to_i - 1

end

def move(board, index, player="X")

  board[index] = player

end



def turn(board)

  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)

  until valid_move?(board,$index)
    puts "That's not a valid number, please enter 1-9:"
    input = gets.strip
    input_to_index(input)
  end

  move(board,$index)
  display_board(board)

end
