board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  # move = index.to_i
  # test = (move - 1)
  if !position_taken?(board, index) && index.between?(0, 8)
    return true
  else
    return false
  end
end

def position_taken? (board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false  
  else 
    return true
  end
end

def move(board, number, letter)
  return board[number] = letter
end

def turn(board) 
    puts "Please enter 1-9:"
    user_input_turn = gets.strip
    user_input_turn = input_to_index(user_input_turn)

  if (valid_move?(board, user_input_turn))
    move(board, user_input_turn, "X")
    display_board(board)
  else 
    puts "Please enter 1-9:"
    user_input_turn = gets.strip
    user_input_turn = input_to_index(user_input_turn)
    valid_move?(board, user_input_turn)
    return move(board, user_input_turn, "X")
  end
  
end

