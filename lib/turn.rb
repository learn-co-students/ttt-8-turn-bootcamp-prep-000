# board = ["", "", "", "", "", "", "", "", ""]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  conv = user_input.to_i - 1
  conv
end

def valid_move?(board, index)

end

def turn(board)

  puts 'Please enter 1-9: '


end
