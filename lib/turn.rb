def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    taken = true
  else
    taken = false
  end
end

def valid_move?(board, index)
  if index.between?(0,8)
    if position_taken?(board, index)
      valid = false
    else
      valid = true
    end
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_move = gets.strip
  user_index = input_to_index(user_move)

  until valid_move?(board, user_index)
    puts "That is an invalid move."
    puts "Please enter 1-9:"
    user_move = gets.strip
    user_index = input_to_index(user_move)
  end

  move(board, user_index)

  display_board(board)
end
