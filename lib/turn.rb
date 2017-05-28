board = ["", "", "", "", "", "", "", "", ""]

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  position = input_to_index(user_input)

  if valid_move?(board, position) == false
    turn board
  else
    move(board, position)
  end

  display_board(board)

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return -1 if input.scan(/\d/).empty?
  return input.to_i - 1
end

def valid_move?(board, input)
  return false if input < 0 || input > 8

  if board[input] == "X" || board[input] == "O"
    return false
  elsif board[input] == " " || board[input] == ""
    return true
  elsif board[input] == nil
    return true
  end
end

def move(board = board, input = position, ch = "X")
  board[input] = ch
end
