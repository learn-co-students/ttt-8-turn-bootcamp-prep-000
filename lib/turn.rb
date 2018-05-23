user_input = ""

def display_board board
puts (" #{board[0]} | #{board[1]} | #{board[2]} ")
puts ("-----------")
puts (" #{board[3]} | #{board[4]} | #{board[5]} ")
puts ("-----------")
puts (" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move?(board, index)
  if board.length < index || index < 0
    return false
  elsif board[index] === "" || board[index] === " " || board[index] === nil
    return true
  else
    return false
  end
end

def move(board, index, x = "X")
  if valid_move?(board, index) === true
    return board[index] = x
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_input = input_to_index(user_input)
  while user_input === -1
    puts "Please enter 1-9"
    user_input = gets.strip
    user_input = input_to_index(user_input)
  end
  move(board, user_input)
  display_board(board)
end