def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  elsif valid_move?(board, index) == false
    puts "invalid"
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board[index]) == false && index.between?(0, 8)
    return true
  elsif position_taken?(board[index]) == true
    return false
  else
    return false
  end
end

def position_taken?(ind)
  if ind == "X" || ind == "O"
    return true
  elsif ind == " " || ind == "" || ind == nil
    return false
  end
end

def input_to_index(index)
  index = index.to_i - 1
  return index
end

def move(board, index, token = "X")
  return board[index] = token
end
