def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[5]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8)
    if board[index] == " " || board[index] == "" || board[index] == nil
      return true
    end
  else return false
  end
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input = user_input-1;
end

def move(board, index, player="X")
  board[index] = player
  return board
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    input = input_to_index input
    if valid_move?(board, input)
      move(board, input, "X")
      display_board(board)
      break
    else
      puts "Not a valid move."
    end
  end
end