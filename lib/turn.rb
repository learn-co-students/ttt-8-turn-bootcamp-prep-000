def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, input)
  if (input < 0 || input > board.length-1)
    return false
  end
  if (board[input] == " " || board[input] == "" || board[input] == nil)
    return true 
  else 
    return false
  end 
end

def move(board, input, token = "X")
  board[input] = token
end

def input_to_index(input)
  input = input.to_i - 1 
  return input
end

def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if (valid_move?(board, input))
    move(board,input)
  else 
    puts "Invalid input."
    turn(board)
    return
  end 
  display_board(board)
end

