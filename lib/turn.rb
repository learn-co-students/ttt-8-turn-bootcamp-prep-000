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
  index = user_input.to_i - 1
end

def move(board, index, token="X")
  board[index] = token
  return board
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(board, index)
      move(board, index, "X")
      display_board(board)
      break
    else
      puts "Not a valid move."
    end
  end
end
