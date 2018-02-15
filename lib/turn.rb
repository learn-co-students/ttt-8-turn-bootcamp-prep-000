def start_game()
  puts "greeting"
  board = [" "," "," "," "," "," "," "," "," "]
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  index >= 0 && index <=8 && board[index] == " "
end

def move(board, index, player_symbol = "X")
  if valid_move?(board, index)
    board[index] = player_symbol
    if player_symbol == "X"
      player_symbol = "O"
    else
      player_symbol = "X"
    end
    display_board(board)
  else
    puts "please enter a valid move"
    return_value = "loop"
  end
end

def turn(board, player_symbol = "X")
  loop do
    puts "Please enter 1-9:"
    input = gets.chomp
    index = input_to_index(input)
    move_check = move(board, index, player_symbol)
    break if move_check == nil
  end
end
