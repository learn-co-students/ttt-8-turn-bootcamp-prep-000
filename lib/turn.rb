def display_board(board)
  row = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts row
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts row
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def  input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board, index)
  if index >= 0 && index <= 8
    if board[index] == "" || board[index] == " " || board[index] == nil
      return true
    else
      return false
    end
  else
    return false
  end
end

def move(board, index, player)
  board[index] = player
end

def turn(board)
  player_move = false
  while player_move == false
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    player_move = valid_move?(board, index)
  end
  move(board, index, "X")
  display_board(board)
end

turn(["X", " ", " ", " ", " ", " ", " ", " ", " "])
