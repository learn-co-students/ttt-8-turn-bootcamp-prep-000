def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " "
    return true
  elsif board[index] == "X" || board[index] == "O" || board[index] == "" || board[index] == nil
    return false
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end

def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  is_valid = false

  until is_valid
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
      is_valid = true
    else
      puts "Invalid Selection! Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
    end
  end
end
