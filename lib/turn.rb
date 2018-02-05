def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  true_or_false = nil
  if index.between?(0, 8) &&
    (board[index] == " " || board[index] == "" || board[index] == nil)
    true_or_false = true
  else
    true_or_false = false
  end
  return true_or_false
end

def move(board, players_move, players_character="X")
  board[players_move] = players_character
end

def input_to_index(user_input)
  converted_input = user_input.to_i
  converted_input = converted_input - 1
end

def turn(board)
#  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    valid_move?(board, index)
#    if valid_move? == true
#      break
#    end
#  end
end


