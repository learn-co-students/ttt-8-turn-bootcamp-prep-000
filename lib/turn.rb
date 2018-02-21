def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) &&
    (board[index] == " " || board[index] == "" || board[index] == nil)
    return true
  else
    return false
  end
end

def move(board, players_move, players_character="X")
  board[players_move] = players_character
end

def input_to_index(user_input)
  converted_input = user_input.to_i
  converted_input = converted_input - 1
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index, "X")
      display_board(board)
    else
      turn(board)
    end
end


