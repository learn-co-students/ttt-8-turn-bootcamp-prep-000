def turn(board)
  input = get_number
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, 'X')
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

def move(board, index, token = 'X')
  board[index] = token
end

def input_to_index(input)
  index = input.to_i - 1
end

def get_number
  loop do
    puts 'Please enter 1-9:'
    input = gets.chomp
    if valid_input?(input)
      return input
      break
    end
  end
  return input
end

def valid_input?(input)
  input.to_i.to_s == input
end
