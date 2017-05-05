

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "------------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "------------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move?(board, index)
  if index > 8 || index < 0
    return false
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    return true
  else
    return false
  end
end

def move(board, index, token)
  board[index] = token
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if !valid_move?(board, index)
    puts "invalid"
    user_input = gets.chomp
  end
  board = move(board, index, "X")
  puts display_board(board)
end
