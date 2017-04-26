def turn(board)
  begin
    puts "Please enter 1-9:"
    choice = gets.strip
    choice = choice.to_i
    choice = input_to_index(choice)
    valid = valid_move?(board, choice)
  end while valid == false
  board = move(board, choice, "X")
  display_board(board)

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def valid_move?(board, index)
  puts index
  var = position_taken?(board, index)
  item = index
  if item <= 8 && item >= 0 && var == false
    return true
  else return false
  end
end

def input_to_index(input)
num = input.to_i
num - 1
end

def move(b, i, c = "X")
  b[i] = c
  return b
end
